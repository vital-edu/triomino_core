import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/game_player_turn.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';

class GameStateError extends GameRuleError {
  final GamePlayerTurn turn;
  final List<GameEvent> events;

  GameStateError({
    required this.turn,
    required this.events,
  }) : super('Game is in an invalid state.');
}
