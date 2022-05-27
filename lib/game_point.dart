import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/models/identifier.dart';

part 'game_point.freezed.dart';

@freezed
class GamePoint with _$GamePoint {
  const GamePoint._();

  // TODO: implement startRound
  // const factory GamePoint.startGame({
  //   required StartGameEvent event,
  //   required int points,
  //   required Identifier identifier,
  // }) = StartGameGamePoint;

  factory GamePoint.layPiece({
    required int points,
    required Identifier identifier,
  }) = LayPieceGamePoint;

  factory GamePoint.createBridge({
    required int points,
    required Identifier identifier,
  }) = CreateBridgeGamePoint;

  const factory GamePoint.createHexagon({
    required int points,
    required Identifier identifier,
  }) = CreateHexagonGamePoint;

  // TODO: implement drawPiece
  // const factory GamePoint.drawPiece({
  //   required DrawPieceGameEvent event,
  //   required int points,
  //   required Identifier identifier,
  // }) = DrawPieceGamePoint;
}
