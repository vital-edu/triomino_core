import 'package:triomino_core/extensions/list_extension.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/rule_book.dart';
import 'package:triomino_core/rules/bonus_game_rule.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';
import 'package:triomino_core/rules/errors/game_state_error.dart';
import 'package:triomino_core/rules/errors/invalid_event_error.dart';
import 'package:triomino_core/rules/errors/remove_event_error.dart';
import 'package:triomino_core/rules/errors/wrong_player_turn_error.dart';
import 'package:triomino_core/rules/piece_game_rule.dart';
import 'package:triomino_core/rules/player_status.dart';
import 'package:triomino_core/rules/player_validation_game_rule.dart';
import 'package:triomino_core/rules/quantity_of_players_rule.dart';
import 'package:triomino_core/rules/start_game_rule.dart';

class Game {
  List<GameEvent> _events = List.unmodifiable([
    AddPlayerEvent(Player(name: 'Player 1'), id: Identifier.uniq()),
    AddPlayerEvent(Player(name: 'Player 2'), id: Identifier.uniq()),
  ]);
  List<GameEvent> get events => List.unmodifiable(_events);

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

  final RuleBook ruleBook;

  Game()
      : ruleBook = RuleBook(
          quantityOfPlayersGameRule: QuantityOfPlayersGameRule.regular(),
          playerValidationGameRule: PlayerValidationGameRule(),
          pieceGameRule: PieceGameRule(),
          startGameRule: StartGameRule(),
          bonusGameRule: BonusGameRule(
            bridgeBonus: 50,
            hexagonBonus: 40,
          ),
        );

  List<Player> get players => events.players.toList();

  List<Piece> get playedPieces =>
      events.whereType<LayPieceGameEvent>().map((e) => e.piece).toList();

  List<PlayerStatus> get playerStatuses {
    final layPieceEvents = events.whereType<LayPieceGameEvent>();
    final addplayerEvents = events.whereType<AddPlayerEvent>();
    final initialPiecesInPlayersHand = ruleBook.quantityOfPlayersGameRule
        .piecesByPlayer(quantityOfPlayers: addplayerEvents.length);

    final playersStatuses = {
      for (final event in addplayerEvents)
        event.player.hashCode: PlayerStatus(
          player: event.player,
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
              score: element.points,
            )
          };
        })
        .values
        .toList();
  }

  void add(GameEvent event) {
    final newEvents = <GameEvent>[...events, event];
    event.map(
      addPlayer: (newEvent) {
        ruleBook.playerValidationGameRule.validate(newEvents);
      },
      startGame: (newEvent) {
        ruleBook.startGameRule.validate(newEvents);
        ruleBook.quantityOfPlayersGameRule.validate(newEvents);
      },
      startRound: (StartRoundGameEvent value) {
        // TODO: implement it
      },
      layPiece: (gameEvent) {
        ruleBook.pieceGameRule.validate(newEvents);
        ruleBook.playerTurn(events: events).map(
          unknown: (turn) {
            // nothing to do
          },
          invalid: (turn) {
            throw GameStateError(turn: turn, events: events);
          },
          determined: (turn) {
            if (turn.player != gameEvent.player) {
              throw WrongPlayerTurnError(
                turn: turn,
                cheaterPlayer: gameEvent.player,
              );
            }
          },
          partiallyDetermined: (turn) {
            if (!turn.undeterminedPlayers.contains(gameEvent.player)) {
              throw WrongPlayerTurnError(
                turn: turn,
                cheaterPlayer: gameEvent.player,
              );
            }
          },
        );
      },
      drawPiece: (DrawPieceGameEvent value) {
        // TODO: implement it
      },
    );

    _events = newEvents;
  }

  bool get hasGameStarted => events.whereType<StartGameEvent>().isNotEmpty;

  Player? get playerOnTurn => ruleBook
      .playerTurn(events: events)
      .maybeMap(determined: (turn) => turn.player, orElse: () => null);

  List<Player> get remainingPlayersToPlay =>
      ruleBook.playerTurn(events: events).map(
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

    ruleBook.quantityOfPlayersGameRule.validate(newEvents);
    events = newEvents;
  }
}
