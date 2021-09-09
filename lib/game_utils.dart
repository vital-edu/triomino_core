import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/player.dart';

class GameUtils {
  int playerIndex = 0;

  Player createRandomPlayer(List<GameEvent> events) {
    final playersCount = events.fold<int>(
      0,
      (previousValue, event) =>
          event is AddPlayerEvent ? previousValue + 1 : previousValue,
    );

    return Player(name: 'Player $playersCount');
  }

  void show(List<GameEvent> events) {
    for (final event in events) {
      print(event);
    }
  }
}
