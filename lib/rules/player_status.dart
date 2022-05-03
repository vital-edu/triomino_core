import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';

part 'player_status.freezed.dart';

@freezed
class PlayerStatus with _$PlayerStatus {
  const factory PlayerStatus({
    required Player player,
    required int piecesInPlayersHand,
    @Default([]) List<Piece> playedPieces,
  }) = _PlayerStatus;
}
