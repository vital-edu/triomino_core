import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/rules/bonus_game_rule.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';

class BonusGameRuleError extends GameRuleError {
  BonusGameRuleError._(String message) : super(message);

  factory BonusGameRuleError.invalidLayPieceBonus({
    required String playerName,
    required Piece piece,
    required int invalidBonus,
    required BonusGameRule rule,
  }) {
    return BonusGameRuleError._(
      'Player $playerName played piece $piece'
      ' and received an invalid bonus: $invalidBonus.'
      ' It should be $invalidBonus',
    );
  }

  factory BonusGameRuleError.invalidBridgeBonus({
    required String playerName,
    required Piece piece,
    required int invalidBonus,
    required BonusGameRule rule,
  }) {
    return BonusGameRuleError._(
      'Player $playerName played piece $piece'
      ' and received an invalid bridge bonus: $invalidBonus.'
      ' It should be ${rule.bridgeBonus}',
    );
  }

  factory BonusGameRuleError.invalidHexagonBonus({
    required String playerName,
    required Piece piece,
    required int invalidBonus,
    required BonusGameRule rule,
  }) {
    return BonusGameRuleError._(
      'Player $playerName played piece $piece'
      ' and received an invalid hexagon bonus: $invalidBonus.'
      ' It should be ${rule.hexagonBonus}',
    );
  }
}
