import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/identifier.dart';
import 'package:triomino_core/player.dart';
import 'package:triomino_core/rule_book.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';
import 'package:triomino_core/rules/errors/game_state_error.dart';
import 'package:triomino_core/rules/errors/invalid_event_error.dart';
import 'package:triomino_core/rules/errors/remove_event_error.dart';
import 'package:triomino_core/rules/errors/wrong_player_turn_error.dart';
import 'package:triomino_core/rules/piece_distribution_game_rule.dart';
import 'package:triomino_core/rules/piece_game_rule.dart';
import 'package:triomino_core/rules/player_validation_game_rule.dart';
import 'package:triomino_core/rules/quantity_of_players_rule.dart';

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

    // todo: decide if should keep valid events and concatenate all error in a single one.
    _events = events;
  }

  final RuleBook ruleBook;

  Game()
      : ruleBook = RuleBook(
          quantityOfPlayersGameRule: QuantityOfPlayersGameRule(2, 6),
          pieceDistributionGameRule: PieceDistributionGameRule(),
          playerValidationGameRule: PlayerValidationGameRule(),
          pieceGameRule: PieceGameRule(),
        );

  List<Player> get players =>
      events.whereType<AddPlayerEvent>().map((e) => e.player).toList();

  void add(GameEvent event) {
    final newEvents = <GameEvent>[...events, event];
    event.map(
      addPlayer: (newEvent) {
        ruleBook.playerValidationGameRule.validate(newEvents);
      },
      startGame: (_) {
        ruleBook.pieceDistributionGameRule.validate(newEvents);
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
    );

    _events = newEvents;
  }

  void remove(GameEvent event) {
    final newEvents = events.where((e) => e.id != event.id).toList();
    if (newEvents.length == events.length) {
      throw RemoveEventError(event);
    }

    events = newEvents;
  }
}
