import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/round_event.dart';
import 'package:triomino_core/rules/errors/piece_game_rule_error.dart';
import 'package:triomino_core/rules/round/round_rule.dart';

class LayPieceRoundRule implements RoundRule {
  @override
  void validate(List<RoundEvent> events) {
    final Set<Piece> uniquePieces = {};
    final List<LayPieceRoundEvent> repeatedEvents = [];

    for (final event in events.whereType<LayPieceRoundEvent>()) {
      final added = uniquePieces.add(event.piece);
      if (!added) {
        repeatedEvents.add(event);
      }
    }

    if (repeatedEvents.isNotEmpty) {
      throw PieceGameRuleError(repeatedEvents);
    }
  }
}
