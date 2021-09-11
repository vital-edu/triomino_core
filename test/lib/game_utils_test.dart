import 'package:test/test.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/game_utils.dart';
import 'package:triomino_core/identifier.dart';
import 'package:triomino_core/player.dart';

void main() {
  final utils = GameUtils();
  group('createRandomPlayer', () {
    test(
        'should create next player with name based on existent players\'s name',
        () {
      final List<GameEvent> events = [
        AddPlayerEvent(Player(name: 'Player 3'), id: Identifier.uniq()),
        AddPlayerEvent(Player(name: 'Player with name'), id: Identifier.uniq()),
        AddPlayerEvent(Player(name: 'Player 1'), id: Identifier.uniq()),
        AddPlayerEvent(Player(name: '3'), id: Identifier.uniq()),
      ];
      final newPlayer = utils.createRandomPlayer(events);
      expect(newPlayer.name, 'Player 2');
    });
  });
}
