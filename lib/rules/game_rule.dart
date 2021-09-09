import 'package:triomino_core/game_event.dart';

abstract class GameRule {
  bool validate(List<GameEvent> events);
}
