import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/player.dart';

part 'game_player_turn.freezed.dart';

@freezed
class GamePlayerTurn with _$GamePlayerTurn {
  const GamePlayerTurn._();
  const factory GamePlayerTurn.unknown() = UnknownGamePlayerTurn;
  const factory GamePlayerTurn.invalid() = InvalidGamePlayerTurn;
  const factory GamePlayerTurn.determined(
    Player player, {
    required List<Player> playersOnOrder,
  }) = DeterminedGamePlayerTurn;
  const factory GamePlayerTurn.partiallyDetermined({
    required List<Player> determinedPlayers,
    required List<Player> undeterminedPlayers,
  }) = PartiallyDeterminedGamePlayerTurn;
}
