import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/piece.dart';

part 'game_point.freezed.dart';

@freezed
class GamePoint with _$GamePoint {
  const GamePoint._();

  const factory GamePoint({
    required int points,
    required Identifier identifier,
  }) = _GamePoint;

  // TODO: implement startRound
  // const factory GamePoint.startGame({
  //   required StartGameEvent event,
  //   required int points,
  //   required Identifier identifier,
  // }) = StartGameGamePoint;

  factory GamePoint.layPiece(
    Piece piece, {
    required Identifier identifier,
  }) {
    final points = piece.side1 + piece.side2 + piece.side3;
    return _GamePoint(points: points, identifier: Identifier.uniq());
  }

  // TODO: implement createBridge
  // const factory GamePoint.createBridge({
  //   required LayPieceGameEvent event,
  //   required int points,
  //   required Identifier identifier,
  // }) = BridgeGamePoint;

  // TODO: implement createHexagon
  // const factory GamePoint.createHexagon({
  //   required LayPieceGameEvent event,
  //   required int points,
  //   required Identifier identifier,
  // }) = HexagonGamePoint;

  // TODO: implement drawPiece
  // const factory GamePoint.drawPiece({
  //   required DrawPieceGameEvent event,
  //   required int points,
  //   required Identifier identifier,
  // }) = DrawPieceGamePoint;
}
