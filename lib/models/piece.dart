import 'package:triomino_core/rules/errors/invalid_piece_error.dart';

class Piece {
  late final int side1;
  late final int side2;
  late final int side3;
  final bool isTriple;

  Piece(int side1, int side2, int side3)
      : isTriple = side1 == side2 && side1 == side3 {
    if (side1 < 0 ||
        side1 > 5 ||
        side2 < 0 ||
        side2 > 5 ||
        side3 < 0 ||
        side3 > 5) {
      throw InvalidPieceError(side1, side2, side3);
    }

    final sortedSides = [side1, side2, side3]..sort();
    this.side1 = sortedSides[0];
    this.side2 = sortedSides[1];
    this.side3 = sortedSides[2];
  }

  factory Piece.triple(int side) => Piece(side, side, side);

  @override
  String toString() {
    if (isTriple) {
      return 'Triple $side1';
    }
    return 'Piece($side1, $side2, $side3)';
  }

  @override
  operator ==(Object other) {
    if (other is! Piece) return false;

    return side1 == other.side1 && side2 == other.side2 && side3 == other.side3;
  }

  @override
  int get hashCode => Object.hash(side1, side2, side3);
}
