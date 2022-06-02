import 'package:test/test.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/game_player_turn.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/rule_book.dart';
import 'package:triomino_core/rules/bonus_game_rule.dart';
import 'package:triomino_core/rules/piece_game_rule.dart';
import 'package:triomino_core/rules/player_validation_game_rule.dart';
import 'package:triomino_core/rules/quantity_of_players_rule.dart';
import 'package:triomino_core/rules/start_game_rule.dart';

void main() {
  group('rule book', () {
    final ruleBook = RuleBook(
      bonusGameRule: BonusGameRule(bridgeBonus: 50, hexagonBonus: 40),
      pieceGameRule: PieceGameRule(),
      playerValidationGameRule: PlayerValidationGameRule(),
      quantityOfPlayersGameRule: QuantityOfPlayersGameRule.regular(),
      startGameRule: StartGameRule(),
    );

    test('expect unknown player turn when there is no event', () {
      expect(ruleBook.playerTurn(events: []), GamePlayerTurn.unknown());
    });

    test(
        'should return determined turn when there is only one player yet to play',
        () {
      final player1 = Player(name: '1');
      final player2 = Player(name: '2');
      expect(
        ruleBook.playerTurn(
          events: [
            AddPlayerEvent(player1, id: Identifier.uniq()),
            AddPlayerEvent(player2, id: Identifier.uniq()),
            LayPieceGameEvent(Piece.triple(3),
                gamePoints: [], player: player1, id: Identifier.uniq())
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
          events: [
            AddPlayerEvent(player1, id: Identifier.uniq()),
            AddPlayerEvent(player2, id: Identifier.uniq()),
            LayPieceGameEvent(Piece.triple(3),
                gamePoints: [], player: player2, id: Identifier.uniq())
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
          events: [
            AddPlayerEvent(player1, id: Identifier.uniq()),
            AddPlayerEvent(player2, id: Identifier.uniq()),
          ],
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
          events: [
            AddPlayerEvent(player1, id: Identifier.uniq()),
            AddPlayerEvent(player2, id: Identifier.uniq()),
            AddPlayerEvent(player3, id: Identifier.uniq()),
            LayPieceGameEvent(Piece.triple(3),
                gamePoints: [], player: player1, id: Identifier.uniq())
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
          events: [
            AddPlayerEvent(player1, id: Identifier.uniq()),
            AddPlayerEvent(player2, id: Identifier.uniq()),
            AddPlayerEvent(player3, id: Identifier.uniq()),
            LayPieceGameEvent(Piece.triple(3),
                gamePoints: [], player: player1, id: Identifier.uniq()),
            LayPieceGameEvent(Piece.triple(3),
                gamePoints: [], player: player2, id: Identifier.uniq()),
            LayPieceGameEvent(Piece.triple(3),
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
