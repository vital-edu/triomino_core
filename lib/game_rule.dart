import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_rule.freezed.dart';

@freezed
class GameRule with _$GameRule {
  const GameRule._();
  @Assert('max>=min', 'max players must be greater than min players.')
  @Assert('min>1', 'it is not allowed a game of only one person.')
  const factory GameRule.quantityOfPlayers(int min, int max) =
      QuantityOfPlayersGameRule;
}
