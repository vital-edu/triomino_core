import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/rules/errors/bonus_game_rule_error.dart';
import 'package:triomino_core/rules/game_rule.dart';

part 'bonus_game_rule.freezed.dart';

@freezed
class BonusGameRule with _$BonusGameRule implements GameRule {
  const BonusGameRule._();

  @Implements<GameRule>()
  const factory BonusGameRule({
    required int bridgeBonus,
    required int hexagonBonus,
  }) = _BonusGameRule;

  @override
  void validate(List<GameEvent> events) {
    final pieceEvents = events.whereType<LayPieceGameEvent>();

    for (final event in pieceEvents) {
      for (final bonusEvent in event.points) {
        bonusEvent.map(
          layPiece: (bonus) {
            if (bonus.points !=
                (event.piece.side1 + event.piece.side2 + event.piece.side3)) {
              throw BonusGameRuleError.invalidLayPieceBonus(
                playerName: event.player.name,
                piece: event.piece,
                invalidBonus: bonus.points,
                rule: this,
              );
            }
          },
          createBridge: (bonus) {
            if (bonus.points != bridgeBonus) {
              throw BonusGameRuleError.invalidBridgeBonus(
                playerName: event.player.name,
                piece: event.piece,
                invalidBonus: bonus.points,
                rule: this,
              );
            }
          },
          createHexagon: (bonus) {
            if (bonus.points != hexagonBonus) {
              throw BonusGameRuleError.invalidHexagonBonus(
                playerName: event.player.name,
                piece: event.piece,
                invalidBonus: bonus.points,
                rule: this,
              );
            }
          },
        );
      }
    }
  }
}
