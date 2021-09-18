import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/rules/game_rule.dart';

part 'piece_game_rule.freezed.dart';

@freezed
class PieceGameRule with _$PieceGameRule implements GameRule {
  const PieceGameRule._();

  @With(GameRule)
  const factory PieceGameRule() = _PieceGameRule;

  @override
  bool validate(List<GameEvent> events) {
    final pieces = events.whereType<LayPieceGameEvent>().map((e) => e.piece);
    final uniquePieces = Set.from(pieces);

    return pieces.length == uniquePieces.length;
  }
}
