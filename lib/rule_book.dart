import 'package:triomino_core/extensions/list_extension.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/game_player_turn.dart';
import 'package:triomino_core/rules/bonus_game_rule.dart';
import 'package:triomino_core/rules/piece_distribution_game_rule.dart';
import 'package:triomino_core/rules/piece_game_rule.dart';
import 'package:triomino_core/rules/player_validation_game_rule.dart';
import 'package:triomino_core/rules/quantity_of_players_rule.dart';
import 'package:triomino_core/rules/start_game_rule.dart';

class RuleBook {
  final QuantityOfPlayersGameRule quantityOfPlayersGameRule;
  final PieceDistributionGameRule pieceDistributionGameRule;
  final PlayerValidationGameRule playerValidationGameRule;
  final PieceGameRule pieceGameRule;
  final StartGameRule startGameRule;
  final BonusGameRule bonusGameRule;

  RuleBook({
    required this.quantityOfPlayersGameRule,
    required this.pieceDistributionGameRule,
    required this.playerValidationGameRule,
    required this.pieceGameRule,
    required this.startGameRule,
    required this.bonusGameRule,
  });

  GamePlayerTurn playerTurn({required List<GameEvent> events}) {
    final players = events.players;

    final List<LayPieceGameEvent> layPieceEvents =
        events.whereType<LayPieceGameEvent>().toList();

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
          return GamePlayerTurn.partiallyDetermined(
            determinedPlayers: [nextEvent.player],
            undeterminedPlayers: undeterminedPlayers,
          );
        },
      );
    });
  }
}
