import 'package:test/test.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/rules/errors/invalid_quantity_of_players_error.dart';
import 'package:triomino_core/rules/quantity_of_players_rule.dart';

import '../../custom_matcher/game_rule_error_has_message.dart';

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
      void result() => gameRule.validate([
            AddPlayerEvent(Player(name: '1'), id: Identifier.uniq()),
            AddPlayerEvent(Player(name: '2'), id: Identifier.uniq()),
            AddPlayerEvent(Player(name: '3'), id: Identifier.uniq()),
          ]);

      expect(
        result,
        throwsA(allOf(
            isA<InvalidQuantityOfPlayersError>(),
            GameRuleErrorHasMessage(equals(
              'Invalid quantity of player(s): 3. It should be between [2 and 2]',
            )))),
      );
    });

    test('2 players should be valid', () {
      final gameRule = QuantityOfPlayersGameRule(2, 2);
      void result() => gameRule.validate([
            AddPlayerEvent(Player(name: '1'), id: Identifier.uniq()),
            AddPlayerEvent(Player(name: '2'), id: Identifier.uniq()),
          ]);

      expect(result, returnsNormally);
    });

    test('1 player should be invalid', () {
      final gameRule = QuantityOfPlayersGameRule(2, 2);
      void result() => gameRule.validate([
            AddPlayerEvent(Player(name: '1'), id: Identifier.uniq()),
          ]);

      expect(
        result,
        throwsA(allOf(
            isA<InvalidQuantityOfPlayersError>(),
            GameRuleErrorHasMessage(equals(
              'Invalid quantity of player(s): 1. It should be between [2 and 2]',
            )))),
      );
    });
  });
}
