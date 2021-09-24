import 'package:triomino_core/rules/errors/game_rule_error.dart';

class InvalidQuantityOfPlayersError extends GameRuleError {
  final int quantityOfPlayersRegistered;
  final int minQuantityOfPlayers;
  final int maxQuantityOfPlayers;

  InvalidQuantityOfPlayersError(
    this.quantityOfPlayersRegistered, {
    required this.minQuantityOfPlayers,
    required this.maxQuantityOfPlayers,
  }) : super(
          'Invalid quantity of player(s): $quantityOfPlayersRegistered. It should be between [$minQuantityOfPlayers and $maxQuantityOfPlayers]',
        );
}
