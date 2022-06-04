import 'package:test/test.dart';
import 'package:triomino_core/game_player_turn.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/round_event.dart';
import 'package:triomino_core/rules/round/bonus_game_rule.dart';
import 'package:triomino_core/rules/round/lay_piece_round_rule.dart';
import 'package:triomino_core/rules/round/round_rule_book.dart';

void main() {
  group('round rule book', () {
    final ruleBook = RoundRuleBook(
      bonusGameRule: BonusGameRule(bridgeBonus: 50, hexagonBonus: 40),
      pieceGameRule: LayPieceRoundRule(),
    );

    test('expect unknown player turn when there is no event', () {
      expect(
        ruleBook.playerTurn(events: [], players: []),
        GamePlayerTurn.unknown(),
      );
    });

    test(
        'should return determined turn when there is only one player yet to play',
        () {
      final player1 = Player(name: '1');
      final player2 = Player(name: '2');
      expect(
        ruleBook.playerTurn(
          // TODO: add tests to validate when there are layPieceEvents with players different than the round events.
          players: [player1, player2],
          events: [
            LayPieceRoundEvent(
              Piece.triple(3),
              gamePoints: [],
              player: player1,
              id: Identifier.uniq(),
            )
          ],
        ),
        GamePlayerTurn.determined(player2, playersOnOrder: [player1, player2]),
      );
    });

    test(
        'should return players in correct order when there is only one player yet to play',
        () {
      final player1 = Player(name: '1');
      final player2 = Player(name: '2');
      expect(
        ruleBook.playerTurn(
          players: [player1, player2],
          events: [
            LayPieceRoundEvent(
              Piece.triple(3),
              gamePoints: [],
              player: player2,
              id: Identifier.uniq(),
            )
          ],
        ),
        GamePlayerTurn.determined(player1, playersOnOrder: [player2, player1]),
      );
    });

    test(
        'should return unknown turn when there is more than one player yet to play',
        () {
      final player1 = Player(name: '1');
      final player2 = Player(name: '2');
      expect(
        ruleBook.playerTurn(
          players: [player1, player2],
          events: [],
        ),
        GamePlayerTurn.unknown(),
      );
    });

    test(
        'should return partially determined turn when there is more than one player yet to play',
        () {
      final player1 = Player(name: '1');
      final player2 = Player(name: '2');
      final player3 = Player(name: '3');
      expect(
        ruleBook.playerTurn(
          players: [player1, player2, player3],
          events: [
            LayPieceRoundEvent(
              Piece.triple(3),
              gamePoints: [],
              player: player1,
              id: Identifier.uniq(),
            )
          ],
        ),
        GamePlayerTurn.partiallyDetermined(
            determinedPlayers: [player1],
            undeterminedPlayers: [player2, player3]),
      );
    });

    test('should return determined turn when all players already played', () {
      final player1 = Player(name: '1');
      final player2 = Player(name: '2');
      final player3 = Player(name: '3');
      expect(
        ruleBook.playerTurn(
          players: [player1, player2, player3],
          events: [
            LayPieceRoundEvent(Piece.triple(3),
                gamePoints: [], player: player1, id: Identifier.uniq()),
            LayPieceRoundEvent(Piece.triple(3),
                gamePoints: [], player: player2, id: Identifier.uniq()),
            LayPieceRoundEvent(Piece.triple(3),
                gamePoints: [], player: player3, id: Identifier.uniq())
          ],
        ),
        GamePlayerTurn.determined(player1, playersOnOrder: [
          player1,
          player2,
          player3,
        ]),
      );
    });
  });
}
