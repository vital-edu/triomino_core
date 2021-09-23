import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/piece.dart';
import 'package:triomino_core/rules/game_rule.dart';

part 'piece_game_rule.freezed.dart';

class PieceGameRuleError extends GameRuleError {
  final List<LayPieceGameEvent> repeatedEvents;

  PieceGameRuleError(this.repeatedEvents)
      : super('Repeated piece(s) in the event(s): $repeatedEvents');
}

@freezed
class PieceGameRule with _$PieceGameRule implements GameRule {
  const PieceGameRule._();

  @With(GameRule)
  const factory PieceGameRule() = _PieceGameRule;

  @override
  void validate(List<GameEvent> events) {
    final Set<Piece> uniquePieces = {};
    final List<LayPieceGameEvent> repeatedEvents = [];

    for (final event in events.whereType<LayPieceGameEvent>()) {
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
