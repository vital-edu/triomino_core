import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/game_point.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/rules/bonus_game_rule.dart';

enum LayPieceBonusType { layPiece, bridge, hexagon }

class LayPieceEventBuilder {
  final Player player;
  final Piece piece;
  final BonusGameRule rule;
  final List<GamePoint> _bonuses = [];

  LayPieceEventBuilder({
    required this.player,
    required this.piece,
    required this.rule,
  });

  LayPieceEventBuilder addBonus(LayPieceBonusType bonusType) {
    switch (bonusType) {
      case LayPieceBonusType.layPiece:
        _bonuses.add(
          GamePoint.layPiece(
            points: piece.side1 + piece.side2 + piece.side3,
            identifier: Identifier.uniq(),
          ),
        );
        break;
      case LayPieceBonusType.bridge:
        _bonuses.add(
          GamePoint.createBridge(
            points: rule.bridgeBonus,
            identifier: Identifier.uniq(),
          ),
        );
        break;
      case LayPieceBonusType.hexagon:
        _bonuses.add(
          GamePoint.createHexagon(
            points: rule.hexagonBonus,
            identifier: Identifier.uniq(),
          ),
        );
        break;
    }

    return this;
  }

  LayPieceGameEvent build() {
    return LayPieceGameEvent(
      piece,
      id: Identifier.uniq(),
      player: player,
      points: _bonuses,
    );
  }
}
