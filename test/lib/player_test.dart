import 'package:test/test.dart';
import 'package:triomino_core/modes/player.dart';

void main() {
  group('operator ==', () {
    test(
        'different objects with same property value should be considered the same',
        () {
      expect(Player(name: 'Player 1'), Player(name: 'Player 1'));
    });
  });
}
