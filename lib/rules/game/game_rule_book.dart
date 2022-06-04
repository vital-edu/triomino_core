import 'package:triomino_core/rule_book.dart';
import 'package:triomino_core/rules/game/player_validation_game_rule.dart';
import 'package:triomino_core/rules/game/quantity_of_players_rule.dart';
import 'package:triomino_core/rules/start_game_rule.dart';

class GameRuleBook extends RuleBook {
  final QuantityOfPlayersGameRule quantityOfPlayersGameRule;
  final PlayerValidationGameRule playerValidationGameRule;
  final StartGameRule startGameRule;

  GameRuleBook({
    required this.quantityOfPlayersGameRule,
    required this.playerValidationGameRule,
    required this.startGameRule,
  });
}
