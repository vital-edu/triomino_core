import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/models/constants.dart';
import 'package:triomino_core/rules/errors/invalid_quantity_of_players_error.dart';
import 'package:triomino_core/rules/game_rule.dart';

class QuantityOfPlayersGameRule implements GameRule {
  final int min;
  final int max;
  final Map<int, int> _playersToPieceQuantity;

  int piecesByPlayer({required int quantityOfPlayers}) {
    if (quantityOfPlayers < min || quantityOfPlayers > max) {
      throw InvalidQuantityOfPlayersError(
        quantityOfPlayers,
        minQuantityOfPlayers: min,
        maxQuantityOfPlayers: max,
      );
    }

    return _playersToPieceQuantity[quantityOfPlayers]!;
  }

  const QuantityOfPlayersGameRule._({
    required this.min,
    required this.max,
    required Map<int, int> playersToPieceQuantity,
  }) : _playersToPieceQuantity = playersToPieceQuantity;

  factory QuantityOfPlayersGameRule({
    required int min,
    required int max,
    required Map<int, int> distribution,
  }) {
    assert(
      min >= Constants.minNumberOfPlayers,
      'it is not allowed a game of only one person.',
    );
    assert(
      max >= min,
      'max players must be equal or greater than min players.',
    );
    assert(
      max < Constants.maxNumberOfPlayers,
      'max players must be greater than min players.',
    );

    final playersQuantities = distribution.keys.toList()..sort();
    if (playersQuantities.first != min) {
      throw ArgumentError();
    }

    if (playersQuantities.last > max) {
      throw ArgumentError();
    }

    final playersToPieceQuantity = <int, int>{};

    for (int i = min; i <= max; i++) {
      playersToPieceQuantity[i] =
          distribution[i] ?? playersToPieceQuantity[i - 1]!;
    }

    return QuantityOfPlayersGameRule._(
      min: min,
      max: max,
      playersToPieceQuantity: playersToPieceQuantity,
    );
  }

  factory QuantityOfPlayersGameRule.regular() {
    return QuantityOfPlayersGameRule(
      min: Constants.minNumberOfPlayers,
      max: 6,
      distribution: <int, int>{
        Constants.minNumberOfPlayers: 9,
        3: 7,
        5: 6,
      },
    );
  }

  @override
  void validate(List<GameEvent> events) {
    final playersCount = events.whereType<AddPlayerEvent>().length;

    if (playersCount < min || playersCount > max) {
      throw InvalidQuantityOfPlayersError(
        playersCount,
        minQuantityOfPlayers: min,
        maxQuantityOfPlayers: max,
      );
    }
  }
}
