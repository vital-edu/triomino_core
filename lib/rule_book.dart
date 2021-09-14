import 'package:triomino_core/rules/piece_distribution_game_rule.dart';
import 'package:triomino_core/rules/quantity_of_players_rule.dart';

class RuleBook {
  final QuantityOfPlayersGameRule quantityOfPlayersGameRule;
  final PieceDistributionGameRule pieceDistributionGameRule;

  RuleBook({
    required this.quantityOfPlayersGameRule,
    required this.pieceDistributionGameRule,
  });
}
