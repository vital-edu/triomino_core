import 'package:test/test.dart';
import 'package:triomino_core/game.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/game_point.dart';
import 'package:triomino_core/lay_piece_event_builder.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';
import 'package:triomino_core/rules/errors/invalid_quantity_of_players_error.dart';
import 'package:triomino_core/rules/errors/piece_game_rule_error.dart';
import 'package:triomino_core/rules/errors/player_validation_game_rule_error.dart';
import 'package:triomino_core/rules/errors/remove_event_error.dart';
import 'package:triomino_core/rules/errors/wrong_player_turn_error.dart';

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

      test('should not allow remove required players', () {
        final players = game.events.whereType<AddPlayerEvent>().toList();

        for (int i = 2; i < players.length; i++) {
          game.remove(players[i]);
        }

        expect(
          () => game.remove(players[0]),
          throwsA(
            allOf(
              isA<InvalidQuantityOfPlayersError>(),
              GameRuleErrorHasMessage(
                contains('Invalid quantity of player(s): 1.'),
              ),
            ),
          ),
        );
      });
    });

    group('lay piece', () {
      test('should not allow lay a piece twice in a game', () {
        final game = Game();

        final firstPlayer = game.players.first;
        final piece = Piece.triple(5);
        final lay1stPieceEvent = GameEvent.layPiece(
          piece,
          gamePoints: [],
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
        final piece1 = Piece.triple(5);
        final lay1stPieceEvent = GameEvent.layPiece(
          piece1,
          gamePoints: [],
          player: firstPlayer,
          id: Identifier.uniq(),
        );

        final piece2 = Piece.triple(4);
        final lay2ndPieceEvent = GameEvent.layPiece(
          piece2,
          gamePoints: [],
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
        final piece1 = Piece.triple(5);
        final lay1stPieceEvent = GameEvent.layPiece(
          piece1,
          gamePoints: [],
          player: firstPlayer,
          id: Identifier.uniq(),
        );

        final piece2 = Piece.triple(4);
        final lay2ndPieceEvent = GameEvent.layPiece(
          piece2,
          gamePoints: [],
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

        final piece1 = Piece.triple(5);
        final lay1stPieceEvent = GameEvent.layPiece(
          Piece.triple(5),
          gamePoints: [],
          player: allPlayers[0],
          id: Identifier.uniq(),
        );

        final piece2 = Piece.triple(4);
        final lay2ndPieceEvent = GameEvent.layPiece(
          piece2,
          gamePoints: [],
          player: allPlayers[1],
          id: Identifier.uniq(),
        );

        final piece3 = Piece.triple(3);
        final lay3rdPieceEvent = GameEvent.layPiece(
          piece3,
          gamePoints: [],
          player: allPlayers[2],
          id: Identifier.uniq(),
        );

        final piece4 = Piece.triple(2);
        final lay4thPieceEvent = GameEvent.layPiece(
          piece4,
          gamePoints: [],
          player: allPlayers[3],
          id: Identifier.uniq(),
        );

        final piece5 = Piece.triple(1);
        final lay5thPieceEvent = GameEvent.layPiece(
          piece5,
          gamePoints: [],
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
  });

  group('player status', () {
    void playPiece(
      Piece piece, {
      required Game game,
      List<LayPieceBonusType> bonuses = const [],
    }) {
      final builder = LayPieceEventBuilder(
        player: game.playerOnTurn ?? game.players.first,
        piece: piece,
        rule: game.ruleBook.bonusGameRule,
      );

      for (final bonus in bonuses) {
        builder.addBonus(bonus);
      }

      game.add(builder.build());
    }

    test('game simulation shold return correct statuses', () {
      final game = Game();
      final player1 = game.players[0];
      final player2 = game.players[1];
      final rule = game.ruleBook.bonusGameRule;

      playPiece(
        Piece.triple(5),
        game: game,
        bonuses: [LayPieceBonusType.hexagon, LayPieceBonusType.bridge],
      );
      playPiece(Piece(3, 2, 5), game: game);
      playPiece(Piece.triple(3), game: game);

      final statuses = game.playerStatuses;
      expect(statuses.length, 2);

      final firstPlayerStatus = statuses[0];
      final secondPlayerStatus = statuses[1];

      expect(firstPlayerStatus.player, player1);
      expect(firstPlayerStatus.playedPieces, [
        Piece.triple(5),
        Piece.triple(3),
      ]);
      expect(firstPlayerStatus.piecesInPlayersHand, 7);
      expect(firstPlayerStatus.score, 114);
      // TODO: should be 124 (10 bonus points for start round with a triple)

      expect(secondPlayerStatus.player, player2);
      expect(secondPlayerStatus.playedPieces, [
        Piece(2, 3, 5),
      ]);
      expect(secondPlayerStatus.piecesInPlayersHand, 8);
      expect(secondPlayerStatus.score, 10);

      playPiece(Piece.triple(2), game: game);
      playPiece(Piece(5, 2, 4), game: game);
      playPiece(Piece(1, 2, 4), game: game);
      playPiece(Piece(1, 3, 3), game: game);
      playPiece(Piece.triple(1), game: game);
      playPiece(Piece(1, 1, 5), game: game);
      playPiece(Piece(2, 1, 5), game: game);
      playPiece(Piece(3, 1, 5), game: game);
      playPiece(Piece(4, 4, 5), game: game);
      playPiece(Piece.triple(4), game: game);
      playPiece(Piece(4, 0, 0), game: game);
      playPiece(Piece(4, 1, 5), game: game);
      playPiece(Piece.triple(0), game: game);
      playPiece(Piece(0, 5, 5), game: game);
      playPiece(Piece(0, 5, 4), game: game);
      playPiece(Piece(0, 5, 3), game: game);

      expect(game.playerStatuses[0].piecesInPlayersHand, 0);
    });
  });
}
