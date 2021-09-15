import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:triomino_core/game.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/identifier.dart';
import 'package:triomino_core/piece.dart';
import 'package:triomino_core/player.dart';

void main() {
  group('default rules', () {
    group('add players phase', () {
      late final Game game;
      final maxPlayersAllowed = 6;

      setUp(() {
        game = Game();

        for (int i = 1; i <= maxPlayersAllowed; i++) {
          game.add(AddPlayerEvent(Player(name: '$i'), id: Identifier.uniq()));
        }
      });
      test('should not add more players than allowed', () {
        expect(game.events.length, maxPlayersAllowed);

        final success = game.add(
          AddPlayerEvent(
            Player(name: '${maxPlayersAllowed + 1}'),
            id: Identifier.uniq(),
          ),
        );
        expect(success, false);

        expect(game.events.length, maxPlayersAllowed);
      });

      test('should not allow add player with same name', () {
        final game = Game();

        final invalidEvent = GameEvent.addPlayer(Player(name: 'Player 1'),
            id: Identifier.uniq());

        final success = game.add(invalidEvent);
        expect(success, false);
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

        expect(game.add(lay1stPieceEvent), true);
        expect(game.add(lay1stPieceEvent), false);
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

        expect(game.add(lay1stPieceEvent), true);
        expect(game.add(lay2ndPieceEvent), false);
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

        expect(game.add(lay1stPieceEvent), true);
        expect(game.add(lay2ndPieceEvent), false);
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
          Piece.triple(2),
          player: allPlayers[0],
          id: Identifier.uniq(),
        );

        expect(game.add(lay1stPieceEvent), true);
        expect(game.add(lay2ndPieceEvent), true);
        expect(game.add(lay3rdPieceEvent), true);
        expect(game.add(lay4thPieceEvent), true);
        expect(game.add(lay5thPieceEvent), true);
      });
    });

    group('remove event', () {
      test('should remove event correctly', () {
        final game = Game();

        final newEvent =
            AddPlayerEvent(Player(name: 'Player 1'), id: Identifier.uniq());
        game.add(newEvent);

        final success = game.remove(newEvent);
        expect(success, true);
        expect(game.events.length, 2);
      });

      test('should not remove event that does not exist', () {
        final game = Game();

        final newEvent =
            AddPlayerEvent(Player(name: 'Player 1'), id: Identifier.uniq());

        final success = game.remove(newEvent);
        expect(success, false);
        expect(game.events.length, 2);
      });
    });
  });
}
