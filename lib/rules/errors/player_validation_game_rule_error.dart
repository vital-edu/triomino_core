import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';

class PlayerValidationGameRuleError extends GameRuleError {
  final List<AddPlayerEvent> repeatedEvents;

  PlayerValidationGameRuleError(this.repeatedEvents)
      : super('Repeated player(s) in the event(s): $repeatedEvents');
}
