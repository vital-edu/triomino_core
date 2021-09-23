import 'package:test/test.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';

class GameRuleErrorHasMessage extends CustomMatcher {
  GameRuleErrorHasMessage(matcher)
      : super('Error with message', 'message', matcher);
  @override
  Object? featureValueOf(actual) => (actual as GameRuleError).message;
}
