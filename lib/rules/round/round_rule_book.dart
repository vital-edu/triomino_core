import 'package:triomino_core/game_player_turn.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/round_event.dart';
import 'package:triomino_core/rule_book.dart';
import 'package:triomino_core/rules/round/bonus_game_rule.dart';
import 'package:triomino_core/rules/round/lay_piece_round_rule.dart';

class RoundRuleBook extends RuleBook {
  final LayPieceRoundRule pieceGameRule;
  final BonusGameRule bonusGameRule;

  RoundRuleBook({
    required this.pieceGameRule,
    required this.bonusGameRule,
  });

  GamePlayerTurn playerTurn(
      {required List<Player> players, required List<RoundEvent> events}) {
    final List<LayPieceRoundEvent> layPieceEvents =
        events.whereType<LayPieceRoundEvent>().toList();

    return layPieceEvents.fold(GamePlayerTurn.unknown(),
        (previousState, nextEvent) {
      return previousState.map(
        determined: (DeterminedGamePlayerTurn turn) {
          final index = turn.playersOnOrder.indexOf(nextEvent.player);
          if (index == -1) return GamePlayerTurn.invalid();
          if (index == turn.playersOnOrder.length - 1) {
            return turn.copyWith(player: turn.playersOnOrder.first);
          }

          return turn.copyWith(player: turn.playersOnOrder[index + 1]);
        },
        invalid: (InvalidGamePlayerTurn invalidTurn) => invalidTurn,
        partiallyDetermined: (PartiallyDeterminedGamePlayerTurn turn) {
          final undeterminedPlayers = turn.undeterminedPlayers
              .where((player) => player != nextEvent.player)
              .toList();

          if (undeterminedPlayers.isEmpty) {
            return GamePlayerTurn.determined(
              turn.determinedPlayers.first,
              playersOnOrder: [...turn.determinedPlayers, nextEvent.player],
            );
          }

          return GamePlayerTurn.partiallyDetermined(
            determinedPlayers: [...turn.determinedPlayers, nextEvent.player],
            undeterminedPlayers: undeterminedPlayers,
          );
        },
        unknown: (UnknownGamePlayerTurn turn) {
          final undeterminedPlayers =
              players.where((player) => player != nextEvent.player).toList();

          if (undeterminedPlayers.length == 1) {
            return GamePlayerTurn.determined(
              undeterminedPlayers.first,
              playersOnOrder: [nextEvent.player, undeterminedPlayers.first],
            );
          }

          return GamePlayerTurn.partiallyDetermined(
            determinedPlayers: [nextEvent.player],
            undeterminedPlayers: undeterminedPlayers,
          );
        },
      );
    });
  }
}
