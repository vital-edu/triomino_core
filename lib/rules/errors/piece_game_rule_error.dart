import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';

class PieceGameRuleError extends GameRuleError {
  final List<LayPieceGameEvent> repeatedEvents;

  PieceGameRuleError(this.repeatedEvents)
      : super('Repeated piece(s) in the event(s): $repeatedEvents');
}
