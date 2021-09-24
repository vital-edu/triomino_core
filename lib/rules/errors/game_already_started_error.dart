import 'package:triomino_core/rules/errors/game_rule_error.dart';

class GameAlreadyStartedError extends GameRuleError {
  GameAlreadyStartedError() : super('A game is already in progress.');
}
