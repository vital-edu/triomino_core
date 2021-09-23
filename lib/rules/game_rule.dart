import 'package:triomino_core/game_event.dart';

abstract class GameRule {
  void validate(List<GameEvent> events);
}
