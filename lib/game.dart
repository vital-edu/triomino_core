import 'package:triomino_core/game_event.dart';

class Game {
  final List<GameEvent> events = [];

  bool add(GameEvent event) {
    events.add(event);
    return true;
  }
}
