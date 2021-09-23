import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';
import 'package:triomino_core/game.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/game_utils.dart';
import 'package:triomino_core/identifier.dart';
import 'package:triomino_core/piece.dart';
import 'package:triomino_core/player.dart';
import 'package:triomino_core/rules/game_rule.dart';
import 'package:triomino_core/rules/piece_game_rule.dart';
import 'package:triomino_core/rules/player_validation_game_rule.dart';

import '../custom_matcher/game_rule_error_has_message.dart';

void main() {
  group('default rules', () {
    group('add players phase', () {
      late Game game;
      final maxPlayersAllowed = 6;

      setUp(() {
        game = Game();

        for (int i = game.players.length + 1; i <= maxPlayersAllowed; i++) {
          game.add(
              AddPlayerEvent(Player(name: 'Player $i'), id: Identifier.uniq()));
        }
      });

      test('should not add more players than allowed', () {
        expect(game.events.length, maxPlayersAllowed);

        // todo: re-implement logic of start game
        expect(
          () => game.add(
            AddPlayerEvent(
              Player(name: '${maxPlayersAllowed + 1}'),
              id: Identifier.uniq(),
            ),
          ),
          throwsA(isA<GameRuleError>()),
        );

        expect(game.events.length, maxPlayersAllowed);
      }, skip: true);

      test('should not allow add player with same name', () {
        final invalidEvent = GameEvent.addPlayer(Player(name: 'Player 1'),
            id: Identifier.uniq());

        // todo: add a more specific test
        expect(
            () => game.add(invalidEvent),
            throwsA(
              allOf(
                isA<PlayerValidationGameRuleError>(),
                GameRuleErrorHasMessage(contains('[$invalidEvent]')),
              ),
            ));
      });
    });

    group('lay piece', () {
      test('should not allow lay a piece twice in a game', () {
        final game = Game();

        final firstPlayer = game.players.first;
        final lay1stPieceEvent = GameEvent.layPiece(
          Piece.triple(5),
          player: firstPlayer,
          id: Identifier.uniq(),
        );

        expect(() => game.add(lay1stPieceEvent), returnsNormally);
        expect(
          () => game.add(lay1stPieceEvent),
          throwsA(
            allOf(
              isA<PieceGameRuleError>(),
              GameRuleErrorHasMessage(contains('[$lay1stPieceEvent]')),
            ),
          ),
        );
      });

      test('should not allow same player lay two pieces at once', () {
        final game = Game();

        final firstPlayer = game.players.first;
        final lay1stPieceEvent = GameEvent.layPiece(
          Piece.triple(5),
          player: firstPlayer,
          id: Identifier.uniq(),
        );
        final lay2ndPieceEvent = GameEvent.layPiece(
          Piece.triple(4),
          player: firstPlayer,
          id: Identifier.uniq(),
        );

        expect(() => game.add(lay1stPieceEvent), returnsNormally);
        expect(
          () => game.add(lay2ndPieceEvent),
          throwsA(allOf(
            isA<WrongPlayerTurnError>(),
            GameRuleErrorHasMessage(equals(
              'Player ${firstPlayer.name} played in the wrong turn.',
            )),
          )),
        );
      });

      test('should not allow a player lay piece outside player\'s turn', () {
        final game = Game();

        game.add(GameEvent.addPlayer(Player(name: 'Player 3'),
            id: Identifier.uniq()));
        game.add(GameEvent.addPlayer(Player(name: 'Player 4'),
            id: Identifier.uniq()));

        final firstPlayer = game.players.first;
        final lay1stPieceEvent = GameEvent.layPiece(
          Piece.triple(5),
          player: firstPlayer,
          id: Identifier.uniq(),
        );
        final lay2ndPieceEvent = GameEvent.layPiece(
          Piece.triple(4),
          player: firstPlayer,
          id: Identifier.uniq(),
        );

        expect(() => game.add(lay1stPieceEvent), returnsNormally);
        expect(
          () => game.add(lay2ndPieceEvent),
          throwsA(allOf(
            isA<WrongPlayerTurnError>(),
            GameRuleErrorHasMessage(equals(
              'Player ${firstPlayer.name} played in the wrong turn.',
            )),
          )),
        );
      });

      test('should allow a player lay piece in his turn', () {
        final game = Game();

        game.add(GameEvent.addPlayer(Player(name: 'Player 3'),
            id: Identifier.uniq()));
        game.add(GameEvent.addPlayer(Player(name: 'Player 4'),
            id: Identifier.uniq()));

        final allPlayers = game.players;

        final lay1stPieceEvent = GameEvent.layPiece(
          Piece.triple(5),
          player: allPlayers[0],
          id: Identifier.uniq(),
        );
        final lay2ndPieceEvent = GameEvent.layPiece(
          Piece.triple(4),
          player: allPlayers[1],
          id: Identifier.uniq(),
        );
        final lay3rdPieceEvent = GameEvent.layPiece(
          Piece.triple(3),
          player: allPlayers[2],
          id: Identifier.uniq(),
        );
        final lay4thPieceEvent = GameEvent.layPiece(
          Piece.triple(2),
          player: allPlayers[3],
          id: Identifier.uniq(),
        );
        final lay5thPieceEvent = GameEvent.layPiece(
          Piece.triple(1),
          player: allPlayers[0],
          id: Identifier.uniq(),
        );

        expect(() => game.add(lay1stPieceEvent), returnsNormally);
        expect(() => game.add(lay2ndPieceEvent), returnsNormally);
        expect(() => game.add(lay3rdPieceEvent), returnsNormally);
        expect(() => game.add(lay4thPieceEvent), returnsNormally);
        expect(() => game.add(lay5thPieceEvent), returnsNormally);
      });
    });

    group('remove event', () {
      test('should remove event correctly', () {
        final game = Game();

        final newEvent =
            AddPlayerEvent(Player(name: 'Player 3'), id: Identifier.uniq());
        game.add(newEvent);

        // todo: add a more specific test
        expect(() => game.remove(newEvent), returnsNormally);
        expect(game.events.length, 2);
      });

      test('should not remove event that does not exist', () {
        final game = Game();

        final notAddedEvent =
            AddPlayerEvent(Player(name: 'Player 3'), id: Identifier.uniq());

        expect(
          () => game.remove(notAddedEvent),
          throwsA(allOf(
            isA<RemoveEventError>(),
            GameRuleErrorHasMessage(equals('Event not found: $notAddedEvent')),
          )),
        );
        expect(game.events.length, 2);
      });
    });

    test('game', () {
      final game = Game();
      game.add(
          GameEvent.addPlayer(Player(name: 'Player 3'), id: Identifier.uniq()));

      final allPlayers = game.players;

      for (int i = 0; i <= 5; i++) {
        for (int j = 0; j <= 5; j++) {
          for (int k = 0; k <= 5; k++) {
            final index = (i + j + k) % allPlayers.length;
            final player = allPlayers[index];

            game.add(GameEvent.layPiece(
              Piece(i, j, k),
              player: player,
              id: Identifier.uniq(),
            ));
          }
        }
      }

      final utils = GameUtils();
      utils.show(game.events);

      expect(game.events.whereType<LayPieceGameEvent>().length, 56);
    });
  });
}
