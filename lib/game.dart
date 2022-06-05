import 'package:triomino_core/extensions/list_extension.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/game_round.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/round_event.dart';
import 'package:triomino_core/rules/game/game_rule_book.dart';
import 'package:triomino_core/rules/round/bonus_game_rule.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';
import 'package:triomino_core/rules/errors/game_state_error.dart';
import 'package:triomino_core/rules/errors/invalid_event_error.dart';
import 'package:triomino_core/rules/errors/remove_event_error.dart';
import 'package:triomino_core/rules/errors/wrong_player_turn_error.dart';
import 'package:triomino_core/rules/round/lay_piece_round_rule.dart';
import 'package:triomino_core/rules/player_status.dart';
import 'package:triomino_core/rules/game/player_validation_game_rule.dart';
import 'package:triomino_core/rules/game/quantity_of_players_rule.dart';
import 'package:triomino_core/rules/round/round_rule_book.dart';
import 'package:triomino_core/rules/start_game_rule.dart';

class Game {
  List<GameEvent> _events = List.unmodifiable([
    AddPlayerEvent(Player(name: 'Player 1'), id: Identifier.uniq()),
    AddPlayerEvent(Player(name: 'Player 2'), id: Identifier.uniq()),
  ]);
  List<GameEvent> get events => List.unmodifiable(_events);
  List<GameRound> _pastRounds = []; // TODO: implement _pastRounds
  GameRound _currentRound = GameRound.unknown();

  set events(List<GameEvent> events) {
    final oldEvents = _events;
    _events = [];

    for (final event in events) {
      try {
        add(event);
      } on GameRuleError {
        _events = oldEvents;
        throw InvalidEventError(event);
      }
    }

    // TODO: decide if should keep valid events and concatenate all error in a single one.
    _events = events;
  }

  final RoundRuleBook roundRuleBook;
  final GameRuleBook gameRuleBook;

  Game()
      : gameRuleBook = GameRuleBook(
          quantityOfPlayersGameRule: QuantityOfPlayersGameRule.regular(),
          playerValidationGameRule: PlayerValidationGameRule(),
          startGameRule: StartGameRule(),
        ),
        roundRuleBook = RoundRuleBook(
          pieceGameRule: LayPieceRoundRule(),
          bonusGameRule: BonusGameRule(
            bridgeBonus: 50,
            hexagonBonus: 40,
          ),
        );

  List<Player> get players => events.players.toList();

  List<Piece> get playedPieces => _currentRound.playedPieces;

  List<PlayerStatus> _calculatePlayerStatuses(List<RoundEvent> events) {
    final players = this.players;
    final layPieceEvents = events.whereType<LayPieceRoundEvent>();
    final initialPiecesInPlayersHand = gameRuleBook.quantityOfPlayersGameRule
        .piecesByPlayer(quantityOfPlayers: players.length);

    final playersStatuses = {
      for (final player in players)
        player.hashCode: PlayerStatus(
          player: player,
          score: 0,
          piecesInPlayersHand: initialPiecesInPlayersHand,
        )
    };

    return layPieceEvents
        .fold<Map<int, PlayerStatus>>(playersStatuses,
            (previousValue, element) {
          final status = previousValue[element.player.hashCode]!;

          return {
            ...previousValue,
            element.player.hashCode: status.copyWith(
              playedPieces: [...status.playedPieces, element.piece],
              piecesInPlayersHand: status.piecesInPlayersHand - 1,
              score: status.score + element.points,
            )
          };
        })
        .values
        .toList();
  }

  List<PlayerStatus> get playerStatuses => _currentRound.statuses;

  void addRoundEvent(RoundEvent event) {
    final newEvents = [..._currentRound.events, event];
    event.map(
      layPiece: (roundEvent) {
        roundRuleBook.pieceGameRule.validate(newEvents);
        roundRuleBook
            .playerTurn(events: _currentRound.events, players: players)
            .map(
          unknown: (turn) {
            // nothing to do
          },
          invalid: (turn) {
            throw GameStateError(turn: turn, events: events);
          },
          determined: (turn) {
            if (turn.player != roundEvent.player) {
              throw WrongPlayerTurnError(
                turn: turn,
                cheaterPlayer: roundEvent.player,
              );
            }
          },
          partiallyDetermined: (turn) {
            if (!turn.undeterminedPlayers.contains(roundEvent.player)) {
              throw WrongPlayerTurnError(
                turn: turn,
                cheaterPlayer: roundEvent.player,
              );
            }
          },
        );

        _currentRound = _currentRound.map(
          onGoing: (round) {
            return round.copyWith(
              events: [...round.events, event],
              statuses: round.statuses
                  .map<PlayerStatus>((e) => e.player == roundEvent.player
                      ? e.copyWith(
                          playedPieces: [...e.playedPieces, roundEvent.piece],
                          piecesInPlayersHand: e.piecesInPlayersHand - 1,
                          score: e.score + roundEvent.points,
                        )
                      : e)
                  .toList(),
            );
          },
          finished: (round) {
            // TODO: implement custom error
            throw ArgumentError("should not happen");
          },
          unknown: (round) {
            return OnGoingGameRound(
                events: [event], statuses: _calculatePlayerStatuses([event]));
          },
        );
        // TODO: finish points rule
        // ruleBook.pointsRule.validate(newEvents);
      },
      drawPiece: (roundEvent) {
        // TODO: implement it
      },
    );
  }

  void add(GameEvent event) {
    final newEvents = <GameEvent>[...events, event];
    event.map(
      addPlayer: (newEvent) {
        gameRuleBook.playerValidationGameRule.validate(newEvents);
      },
      startGame: (newEvent) {
        gameRuleBook.startGameRule.validate(newEvents);
        gameRuleBook.quantityOfPlayersGameRule.validate(newEvents);
      },
      round: (newEvent) {
        // TODO: implement it
      },
    );

    _events = newEvents;
  }

  bool get hasGameStarted => events.whereType<StartGameEvent>().isNotEmpty;

  Player? get playerOnTurn => roundRuleBook
      .playerTurn(events: _currentRound.events, players: players)
      .maybeMap(determined: (turn) => turn.player, orElse: () => null);

  List<Player> get remainingPlayersToPlay => roundRuleBook
      .playerTurn(events: _currentRound.events, players: players)
      .map(
        unknown: (_) => players,
        invalid: (turn) => throw GameStateError(turn: turn, events: events),
        determined: (_) => [],
        partiallyDetermined: (turn) => turn.undeterminedPlayers,
      );

  void remove(GameEvent event) {
    final newEvents = events.where((e) => e.id != event.id).toList();
    if (newEvents.length == events.length) {
      throw RemoveEventError(event);
    }

    gameRuleBook.quantityOfPlayersGameRule.validate(newEvents);
    events = newEvents;
  }
}
