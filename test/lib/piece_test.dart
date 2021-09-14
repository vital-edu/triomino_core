import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:triomino_core/piece.dart';

void main() {
  group('default constructor', () {
    test('sides should not be outside of range [0, 5]', () {
      expect(() => Piece(-1, 0, 0), throwsA(isA<AssertionError>()));
      expect(() => Piece(0, -1, 0), throwsA(isA<AssertionError>()));
      expect(() => Piece(0, 0, -1), throwsA(isA<AssertionError>()));
      expect(() => Piece(6, 0, 0), throwsA(isA<AssertionError>()));
      expect(() => Piece(0, 6, 0), throwsA(isA<AssertionError>()));
      expect(() => Piece(0, 0, 6), throwsA(isA<AssertionError>()));
    });

    test('triples should not be outside of range [0, 5]', () {
      expect(() => Piece.triple(-1), throwsA(isA<AssertionError>()));
      expect(() => Piece.triple(6), throwsA(isA<AssertionError>()));
    });

    test('should create a valid Piece', () {
      final piece = Piece(1, 0, 5);
      expect(piece.side1, 1);
      expect(piece.side2, 0);
      expect(piece.side3, 5);
    });

    test('should create a valid triple', () {
      final piece = Piece.triple(5);
      expect(piece.side1, 5);
      expect(piece.side2, 5);
      expect(piece.side3, 5);
    });
  });
}
