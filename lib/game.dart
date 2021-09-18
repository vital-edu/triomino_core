import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/identifier.dart';
import 'package:triomino_core/player.dart';
import 'package:triomino_core/rule_book.dart';
import 'package:triomino_core/rules/game_rule.dart';
import 'package:triomino_core/rules/piece_distribution_game_rule.dart';
import 'package:triomino_core/rules/player_validation_game_rule.dart';
import 'package:triomino_core/rules/quantity_of_players_rule.dart';

class _GameValidationError extends Error {}

class GameStateError extends Error {}

class Game {
  List<GameEvent> _events = [
    AddPlayerEvent(Player(name: 'Player 1'), id: Identifier.uniq()),
    AddPlayerEvent(Player(name: 'Player 2'), id: Identifier.uniq()),
  ];
  List<GameEvent> get events => _events;
  final RuleBook ruleBook;

  Game()
      : ruleBook = RuleBook(
          quantityOfPlayersGameRule: QuantityOfPlayersGameRule(2, 6),
          pieceDistributionGameRule: PieceDistributionGameRule(),
          playerValidationGameRule: PlayerValidationGameRule(),
        );

  List<Player> get players =>
      _events.whereType<AddPlayerEvent>().map((e) => e.player).toList();

  bool add(GameEvent event) {
    final newEvents = <GameEvent>[...events, event];
    try {
      event.map(
        addPlayer: (newEvent) {
          _validateEvents(newEvents, rule: ruleBook.quantityOfPlayersGameRule);
          _validateEvents(newEvents, rule: ruleBook.playerValidationGameRule);
        },
        startGame: (_) {
          _validateEvents(newEvents, rule: ruleBook.pieceDistributionGameRule);
        },
        layPiece: (gameEvent) {
          ruleBook.playerTurn(events: events).map(unknown: (turn) {
            // nothing to do
          }, invalid: (turn) {
            throw GameStateError();
          }, determined: (turn) {
            if (turn.player != gameEvent.player) {
              throw _GameValidationError();
            }
          }, partiallyDetermined: (turn) {
            if (!turn.undeterminedPlayers.contains(gameEvent.player)) {
              throw _GameValidationError();
            }
          });
        },
      );
    } on _GameValidationError {
      return false;
    }

    events.add(event);
    return true;
  }

  bool remove(GameEvent event) {
    final newEvents =
        events.where((element) => element.id != event.id).toList();
    try {
      event.map(
        addPlayer: (newEvent) {
          _validateEvents(newEvents, rule: ruleBook.quantityOfPlayersGameRule);
        },
        startGame: (StartGameEvent value) {
          _validateEvents(newEvents, rule: ruleBook.pieceDistributionGameRule);
        },
        layPiece: (LayPieceGameEvent value) {
          throw UnimplementedError();
        },
      );
    } on _GameValidationError {
      return false;
    }

    final beforeRemovalEventsCount = events.length;
    _events = newEvents;

    return events.length < beforeRemovalEventsCount;
  }

  void _validateEvents(
    List<GameEvent> events, {
    required GameRule rule,
  }) {
    final isValid = rule.validate(events);
    if (!isValid) {
      throw _GameValidationError();
    }
  }
}
