import 'package:test/test.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/identifier.dart';
import 'package:triomino_core/piece.dart';
import 'package:triomino_core/player.dart';
import 'package:triomino_core/rules/piece_game_rule.dart';

void main() {
  group('validate', () {
    test('should not validate duplicated pieces', () {
      final rule = PieceGameRule();
      final events = <GameEvent>[
        LayPieceGameEvent(
          Piece.triple(1),
          player: Player(name: '1'),
          id: Identifier.uniq(),
        ),
        LayPieceGameEvent(
          Piece.triple(1),
          player: Player(name: '2'),
          id: Identifier.uniq(),
        ),
      ];

      final isValid = rule.validate(events);

      expect(isValid, false);
    });

    test('should not validate unique pieces', () {
      final rule = PieceGameRule();
      final events = <GameEvent>[
        LayPieceGameEvent(
          Piece.triple(1),
          player: Player(name: '1'),
          id: Identifier.uniq(),
        ),
        LayPieceGameEvent(
          Piece.triple(2),
          player: Player(name: '1'),
          id: Identifier.uniq(),
        ),
      ];

      final isValid = rule.validate(events);

      expect(isValid, true);
    });
  });
}
