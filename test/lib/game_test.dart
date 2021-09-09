import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:triomino_core/game.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/player.dart';

void main() {
  group('default rules', () {
    group('add players phase', () {
      late final Game game;
      final maxPlayersAllowed = 6;

      setUp(() {
        game = Game();

        for (int i = 1; i <= maxPlayersAllowed; i++) {
          game.add(AddPlayerEvent(Player(name: '$i')));
        }
      });

      test('should not add more players than allowed', () {
        expect(game.events.length, maxPlayersAllowed);

        final success =
            game.add(AddPlayerEvent(Player(name: '${maxPlayersAllowed + 1}')));
        expect(success, false);

        expect(game.events.length, maxPlayersAllowed);
      });
    });
  });
}
