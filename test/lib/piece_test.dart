import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:triomino_core/modes/piece.dart';

void main() {
  group('default constructor', () {
    void testInvalidPieceSides(int side1, int side2, int side3) {
      test('Piece($side1, $side2, $side3) should be an invalid piece', () {
        expect(
          () => Piece(side1, side2, side3),
          throwsA(isA<AssertionError>()),
        );
      });
    }

    group('regular pieces', () {
      testInvalidPieceSides(-1, 0, 0);
      testInvalidPieceSides(0, -1, 0);
      testInvalidPieceSides(0, 0, -1);
      testInvalidPieceSides(6, 0, 0);
      testInvalidPieceSides(0, 6, 0);
      testInvalidPieceSides(0, 0, 6);
    });

    test('triples should not be outside of range [0, 5]', () {
      expect(() => Piece.triple(-1), throwsA(isA<AssertionError>()));
      expect(() => Piece.triple(6), throwsA(isA<AssertionError>()));
    });

    test('should create a valid Piece with sorted sides', () {
      final piece = Piece(1, 0, 5);
      expect(piece.side1, 0);
      expect(piece.side2, 1);
      expect(piece.side3, 5);
    });

    test('should create a valid triple', () {
      final piece = Piece.triple(5);
      expect(piece.side1, 5);
      expect(piece.side2, 5);
      expect(piece.side3, 5);
    });
  });

  group('toString', () {
    void testToStringOf(Piece piece, {required String expected}) {
      test(
        '${piece.toString()} should be $expected',
        () => expect(piece.toString(), expected),
      );
    }

    group('regular piece', () {
      testToStringOf(Piece(2, 3, 5), expected: 'Piece(2, 3, 5)');
      testToStringOf(Piece(2, 5, 3), expected: 'Piece(2, 3, 5)');
      testToStringOf(Piece(3, 2, 5), expected: 'Piece(2, 3, 5)');
      testToStringOf(Piece(3, 5, 2), expected: 'Piece(2, 3, 5)');
      testToStringOf(Piece(5, 2, 3), expected: 'Piece(2, 3, 5)');
      testToStringOf(Piece(5, 3, 2), expected: 'Piece(2, 3, 5)');
    });

    group('triple piece', () {
      testToStringOf(Piece.triple(3), expected: 'Triple 3');
      testToStringOf(Piece(3, 3, 3), expected: 'Triple 3');
    });
  });

  group('operator ==', () {
    test('different objects with same sides should be considered the same', () {
      expect(Piece(1, 2, 3), Piece(1, 2, 3));
    });

    test('pieces with same sides should be considered the same', () {
      expect(Piece(1, 2, 3), Piece(1, 3, 2));
    });

    test('a triple and a piece should be the same if all sides are equals', () {
      expect(Piece(1, 1, 1), Piece.triple(1));
    });
  });
}
