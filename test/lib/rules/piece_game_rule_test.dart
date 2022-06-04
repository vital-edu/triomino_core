import 'package:test/test.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/round_event.dart';
import 'package:triomino_core/rules/errors/piece_game_rule_error.dart';
import 'package:triomino_core/rules/round/lay_piece_round_rule.dart';

import '../../custom_matcher/game_rule_error_has_message.dart';

void main() {
  group('validate', () {
    test('should not validate duplicated pieces', () {
      final rule = LayPieceRoundRule();
      final events = [
        LayPieceRoundEvent(
          Piece.triple(1),
          gamePoints: [],
          player: Player(name: '1'),
          id: Identifier.uniq(),
        ),
        LayPieceRoundEvent(
          Piece.triple(1),
          gamePoints: [],
          player: Player(name: '2'),
          id: Identifier.uniq(),
        ),
      ];

      expect(() => rule.validate(events), throwsA(isA<PieceGameRuleError>()));
    });

    test('should not validate unique pieces', () {
      final rule = LayPieceRoundRule();
      final events = [
        LayPieceRoundEvent(
          Piece.triple(1),
          gamePoints: [],
          player: Player(name: '1'),
          id: Identifier.uniq(),
        ),
        LayPieceRoundEvent(
          Piece.triple(2),
          gamePoints: [],
          player: Player(name: '1'),
          id: Identifier.uniq(),
        ),
      ];

      expect(() => rule.validate(events), returnsNormally);
    });

    test('error message should contain repeated events', () {
      final rule = LayPieceRoundRule();

      final repeatedEvent = LayPieceRoundEvent(
        Piece.triple(1),
        gamePoints: [],
        player: Player(name: 'Player'),
        id: Identifier.uniq(),
      );

      expect(
        () => rule.validate([repeatedEvent, repeatedEvent]),
        throwsA(allOf(
          isA<PieceGameRuleError>(),
          GameRuleErrorHasMessage(
            equals('Repeated piece(s) in the event(s): [$repeatedEvent]'),
          ),
        )),
      );
    });
  });
}
