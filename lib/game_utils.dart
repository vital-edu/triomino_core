import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/player.dart';
import 'package:collection/collection.dart';

class GameUtils {
  final _playerNameRegex = RegExp(r'^Player (\d)+$');

  Player createRandomPlayer(List<GameEvent> events) {
    int lastIndex = 1;

    events
        .fold<List<int?>>(
          [],
          (previousValue, event) => event is AddPlayerEvent &&
                  _playerNameRegex.hasMatch(event.player.name)
              ? [
                  ...previousValue,
                  int.tryParse(_playerNameRegex
                          .firstMatch(event.player.name)
                          ?.group(1) ??
                      '')
                ]
              : previousValue,
        )
        .whereNotNull()
        .sorted(Comparable.compare)
        .forEachIndexedWhile((index, element) {
          if (element == index + 1) {
            return true;
          }

          lastIndex = index + 1;
          return false;
        });

    return Player(name: 'Player $lastIndex');
  }

  void show(List<GameEvent> events) {
    for (final event in events) {
      event.map(addPlayer: (e) {
        print('${e.player.name} joined the game.');
      });
    }
  }
}
