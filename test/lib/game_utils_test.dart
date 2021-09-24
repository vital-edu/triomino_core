import 'package:test/test.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/game_utils.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/player.dart';

void main() {
  final utils = GameUtils();
  group('createRandomPlayer', () {
    group('create next player with name based on existent players\'s name', () {
      test(
          'should create next regular player\'s name when there are players with irregular names',
          () {
        final List<GameEvent> events = [
          AddPlayerEvent(Player(name: 'Player 3'), id: Identifier.uniq()),
          AddPlayerEvent(Player(name: 'Player with name'),
              id: Identifier.uniq()),
          AddPlayerEvent(Player(name: 'Player 1'), id: Identifier.uniq()),
          AddPlayerEvent(Player(name: '3'), id: Identifier.uniq()),
        ];
        final newPlayer = utils.createRandomPlayer(events);
        expect(newPlayer.name, 'Player 2');
      });

      test(
          'should create next regular player\'s name when there are only players with regular names in the correct order',
          () {
        final List<GameEvent> events = [
          AddPlayerEvent(Player(name: 'Player 1'), id: Identifier.uniq()),
          AddPlayerEvent(Player(name: 'Player 2'), id: Identifier.uniq()),
        ];
        final newPlayer = utils.createRandomPlayer(events);
        expect(newPlayer.name, 'Player 3');
      });
    });
  });
}
