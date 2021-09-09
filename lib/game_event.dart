import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/player.dart';

part 'game_event.freezed.dart';

@freezed
class GameEvent with _$GameEvent {
  const GameEvent._();

  const factory GameEvent.addPlayer(Player player) = AddPlayerEvent;
}
