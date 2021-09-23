import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/modes/player.dart';
import 'package:collection/collection.dart';

class GameUtils {
  final _playerNameRegex = RegExp(r'^Player (\d)+$');

  Player createRandomPlayer(List<GameEvent> events) {
    int nextPlayerName = 1;

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
        .forEachIndexedWhile((index, actualPlayerName) {
          final expectedPlayerName = index + 1;
          if (actualPlayerName != expectedPlayerName) {
            return false;
          }

          nextPlayerName = expectedPlayerName + 1;
          return true;
        });

    return Player(name: 'Player $nextPlayerName');
  }

  void show(List<GameEvent> events) {
    for (final event in events) {
      event.map(
        addPlayer: (e) {
          print('${e.player.name} joined the game.');
        },
        startGame: (_) {
          print('Game started');
        },
        layPiece: (e) {
          print('${e.player.name} played ${e.piece}');
        },
      );
    }
  }
}
