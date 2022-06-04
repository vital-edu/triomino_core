import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/game_point.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';

part 'round_event.freezed.dart';

@freezed
class RoundEvent with _$RoundEvent {
  const factory RoundEvent.layPiece(
    Piece piece, {
    required List<GamePoint> gamePoints,
    required Player player,
    required Identifier id,
  }) = LayPieceRoundEvent;

  const factory RoundEvent.drawPiece(
    Piece piece, {
    required Player player,
    required Identifier id,
  }) = DrawPieceRoundEvent;
}

extension LayPieceRoundEventPoints on LayPieceRoundEvent {
  int get points => gamePoints.fold(
      0, (previousValue, gamePoint) => previousValue + gamePoint.points);
}
