import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/player.dart';
import 'package:triomino_core/rule_book.dart';
import 'package:triomino_core/rules/game_rule.dart';
import 'package:triomino_core/rules/quantity_of_players_rule.dart';

class _GameValidationError extends Error {}

class Game {
  final List<GameEvent> events = [
    AddPlayerEvent(Player(name: 'Player 1')),
    AddPlayerEvent(Player(name: 'Player 2')),
  ];
  final RuleBook ruleBook;

  Game()
      : ruleBook = RuleBook(
          quantityOfPlayersGameRule: QuantityOfPlayersGameRule(2, 6),
        );

  bool add(GameEvent event) {
    try {
      event.map(addPlayer: (newEvent) {
        _validateEvent(
          newEvent: newEvent,
          oldEvents: events,
          rule: ruleBook.quantityOfPlayersGameRule,
        );
      });
    } on _GameValidationError {
      return false;
    }

    events.add(event);
    return true;
  }

  void _validateEvent({
    required GameEvent newEvent,
    required List<GameEvent> oldEvents,
    required GameRule rule,
  }) {
    final isValid = rule.validate(<GameEvent>[newEvent, ...oldEvents]);
    if (!isValid) {
      throw _GameValidationError();
    }
  }
}
