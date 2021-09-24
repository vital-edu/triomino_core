import 'package:test/test.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/rules/errors/game_already_started_error.dart';
import 'package:triomino_core/rules/start_game_rule.dart';

import '../../custom_matcher/game_rule_error_has_message.dart';

void main() {
  group('validate', () {
    test('should not start a game twice', () {
      final ruler = StartGameRule();
      final events = [
        StartGameEvent(id: Identifier.uniq()),
        StartGameEvent(id: Identifier.uniq()),
      ];

      expect(
          () => ruler.validate(events),
          throwsA(allOf(
            isA<GameAlreadyStartedError>(),
            GameRuleErrorHasMessage(equals('A game is already in progress.')),
          )));
    });

    test('should let start a game once', () {
      final ruler = StartGameRule();
      final events = [
        StartGameEvent(id: Identifier.uniq()),
      ];

      expect(() => ruler.validate(events), returnsNormally);
    });
  });
}
