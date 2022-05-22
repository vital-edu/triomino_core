import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/rules/game_rule.dart';

part 'piece_distribution_game_rule.freezed.dart';

@freezed
class PieceDistributionGameRule
    with _$PieceDistributionGameRule
    implements GameRule {
  const PieceDistributionGameRule._();

  @Implements<GameRule>()
  const factory PieceDistributionGameRule() = _PieceDistributionGameRule;

  @override
  void validate(List<GameEvent> events) {}
}
