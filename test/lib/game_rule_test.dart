import 'package:test/test.dart';
import 'package:triomino_core/game_rule.dart';

void main() {
  group('Number of players rule', () {
    group('creation of rule', () {
      test('min players must be greater than 1', () {
        expect(() => GameRule.quantityOfPlayers(1, 2),
            throwsA(isA<AssertionError>()));
      });

      test('max players must be greater than min players', () {
        expect(() => GameRule.quantityOfPlayers(3, 2),
            throwsA(isA<AssertionError>()));
      });
    });
  });
}
