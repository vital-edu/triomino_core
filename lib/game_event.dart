import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/modes/identifier.dart';
import 'package:triomino_core/modes/piece.dart';
import 'package:triomino_core/modes/player.dart';

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

  const factory GameEvent.layPiece(
    Piece piece, {
    required Player player,
    required Identifier id,
  }) = LayPieceGameEvent;
}
