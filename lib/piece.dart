class Piece {
  late final int side1;
  late final int side2;
  late final int side3;
  final bool isTriple;

  Piece(int side1, int side2, int side3)
      : assert(side1 >= 0),
        assert(side2 >= 0),
        assert(side3 >= 0),
        assert(side1 <= 5),
        assert(side2 <= 5),
        assert(side3 <= 5),
        isTriple = side1 == side2 && side1 == side3 {
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
}
