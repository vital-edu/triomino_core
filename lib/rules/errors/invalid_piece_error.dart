import 'package:triomino_core/rules/errors/game_rule_error.dart';

class InvalidPieceError extends GameRuleError {
  final int side1;
  final int side2;
  final int side3;

  InvalidPieceError(this.side1, this.side2, this.side3)
      : super(
            'Invalid Piece($side1, $side2, $side3). A piece must have all sides between [0, 5]');
}
