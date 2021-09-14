import 'package:freezed_annotation/freezed_annotation.dart';

part 'piece.freezed.dart';

@freezed
class Piece with _$Piece {
  @Assert('side1 >= 0')
  @Assert('side2 >= 0')
  @Assert('side3 >= 0')
  @Assert('side1 <= 5')
  @Assert('side2 <= 5')
  @Assert('side3 <= 5')
  const factory Piece(int side1, int side2, int side3) = _Piece;
  factory Piece.triple(int side) => Piece(side, side, side);
}
