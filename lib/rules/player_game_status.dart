import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/models/player.dart';

part 'player_game_status.freezed.dart';

@freezed
class PlayerGameStatus with _$PlayerGameStatus {
  const factory PlayerGameStatus({
    required Player player,
    required int score,
  }) = _PlayerGameStatus;
}
