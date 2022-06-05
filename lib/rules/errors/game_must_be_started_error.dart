import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';

class GameMustBeStartedError extends GameRuleError {
  GameMustBeStartedError(GameEvent event)
      : super('An event was emitted before the game started: $event');
}
