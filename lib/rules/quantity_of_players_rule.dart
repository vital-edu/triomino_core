import 'package:freezed_annotation/freezed_annotation.dart';

part 'quantity_of_players_rule.freezed.dart';

@freezed
class QuantityOfPlayersGameRule with _$QuantityOfPlayersGameRule {
  @Assert('max>=min', 'max players must be greater than min players.')
  @Assert('min>1', 'it is not allowed a game of only one person.')
  const factory QuantityOfPlayersGameRule(int min, int max) =
      _QuantityOfPlayersGameRule;
}
