import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/rules/game_rule.dart';
import 'package:triomino_core/rules/quantity_of_players_rule.dart';

part 'available_pieces_game_rule.freezed.dart';

@freezed
class AvailablePiecesGameRule
    with _$AvailablePiecesGameRule
    implements GameRule {
  @Implements<GameRule>()
  const factory AvailablePiecesGameRule(
          QuantityOfPlayersGameRule quantityOfPlayersRule) =
      _AvailablePiecesGameRule;

  @override
  void validate(List<GameEvent> events) {}
}
