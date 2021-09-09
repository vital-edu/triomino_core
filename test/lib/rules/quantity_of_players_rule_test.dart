import 'package:test/test.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/player.dart';
import 'package:triomino_core/rules/quantity_of_players_rule.dart';

void main() {
  group('creation of rule', () {
    test('min players should be greater than 1', () {
      expect(() => QuantityOfPlayersGameRule(1, 2),
          throwsA(isA<AssertionError>()));
    });

    test('max players should be greater than min players', () {
      expect(() => QuantityOfPlayersGameRule(3, 2),
          throwsA(isA<AssertionError>()));
    });
  });

  group('validate with (2,2) rule', () {
    test('3 players should be invalid', () {
      final gameRule = QuantityOfPlayersGameRule(2, 2);
      final result = gameRule.validate([
        AddPlayerEvent(Player(name: '1')),
        AddPlayerEvent(Player(name: '2')),
        AddPlayerEvent(Player(name: '3')),
      ]);

      expect(result, false);
    });

    test('2 players should be valid', () {
      final gameRule = QuantityOfPlayersGameRule(2, 2);
      final result = gameRule.validate([
        AddPlayerEvent(Player(name: '1')),
        AddPlayerEvent(Player(name: '2')),
      ]);

      expect(result, true);
    });

    test('1 player should be invalid', () {
      final gameRule = QuantityOfPlayersGameRule(2, 2);
      final result = gameRule.validate([
        AddPlayerEvent(Player(name: '1')),
      ]);

      expect(result, false);
    });
  });
}
