import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:triomino_core/game.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/identifier.dart';
import 'package:triomino_core/player.dart';

void main() {
  group('default rules', () {
    group('add players phase', () {
      late final Game game;
      final maxPlayersAllowed = 6;

      setUp(() {
        game = Game();

        for (int i = 1; i <= maxPlayersAllowed; i++) {
          game.add(AddPlayerEvent(Player(name: '$i'), id: Identifier.uniq()));
        }
      });
      test('should not add more players than allowed', () {
        expect(game.events.length, maxPlayersAllowed);

        final success = game.add(
          AddPlayerEvent(
            Player(name: '${maxPlayersAllowed + 1}'),
            id: Identifier.uniq(),
          ),
        );
        expect(success, false);

        expect(game.events.length, maxPlayersAllowed);
      });
    });

    group('remove event', () {
      test('should remove event correctly', () {
        final game = Game();

        final newEvent =
            AddPlayerEvent(Player(name: 'Player 1'), id: Identifier.uniq());
        game.add(newEvent);

        final success = game.remove(newEvent);
        expect(success, true);
        expect(game.events.length, 2);
      });

      test('should not remove event that does not exist', () {
        final game = Game();

        final newEvent =
            AddPlayerEvent(Player(name: 'Player 1'), id: Identifier.uniq());

        final success = game.remove(newEvent);
        expect(success, false);
        expect(game.events.length, 2);
      });
    });
  });
}
