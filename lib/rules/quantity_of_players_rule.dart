import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/rules/game_rule.dart';

part 'quantity_of_players_rule.freezed.dart';

@freezed
class QuantityOfPlayersGameRule
    with _$QuantityOfPlayersGameRule
    implements GameRule {
  const QuantityOfPlayersGameRule._();

  @Assert('max>=min', 'max players must be greater than min players.')
  @Assert('min>1', 'it is not allowed a game of only one person.')
  @Implements(GameRule)
  const factory QuantityOfPlayersGameRule(int min, int max) =
      _QuantityOfPlayersGameRule;

  @override
  bool validate(List<GameEvent> events) {
    final playersCount = events.whereType<AddPlayerEvent>().length;
    return playersCount >= min && playersCount <= max;
  }
}
