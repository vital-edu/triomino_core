import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/game_round.dart';
import 'package:triomino_core/models/identifier.dart';
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

  const factory GameEvent.round(
    FinishedGameRound round, {
    required int roundNumber,
    required Identifier id,
  }) = RoundGameEvent;
}
