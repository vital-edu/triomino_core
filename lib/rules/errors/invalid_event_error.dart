import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';

class InvalidEventError extends GameRuleError {
  final GameEvent invalidEvent;

  InvalidEventError(this.invalidEvent) : super('Invalid event: $invalidEvent');
}
