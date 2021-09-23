import 'package:triomino_core/game_player_turn.dart';
import 'package:triomino_core/player.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';

class WrongPlayerTurnError extends GameRuleError {
  final GamePlayerTurn turn;
  final Player cheaterPlayer;

  WrongPlayerTurnError({
    required this.cheaterPlayer,
    required this.turn,
  }) : super('Player ${cheaterPlayer.name} played in the wrong turn.');
}
