import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/game_point.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';

part 'game_event.freezed.dart';

@freezed
class GameEvent with _$GameEvent {
  const GameEvent._();

  const factory GameEvent.addPlayer(
    Player player, {
    required Identifier id,
  }) = AddPlayerEvent;

  const factory GameEvent.startGame({
    required Identifier id,
  }) = StartGameEvent;

  const factory GameEvent.startRound(
    LayPieceGameEvent event, {
    required Identifier id,
  }) = StartRoundGameEvent;

  const factory GameEvent.layPiece(
    Piece piece, {
    required List<GamePoint> points,
    required Player player,
    required Identifier id,
  }) = LayPieceGameEvent;

  const factory GameEvent.drawPiece(
    Piece piece, {
    required Player player,
    required Identifier id,
  }) = DrawPieceGameEvent;
}
