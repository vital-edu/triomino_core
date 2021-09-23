import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';

class RemoveEventError extends GameRuleError {
  final GameEvent unknownEvent;
  RemoveEventError(this.unknownEvent) : super('Event not found: $unknownEvent');
}
