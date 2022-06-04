import 'package:triomino_core/game_point.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/round_event.dart';
import 'package:triomino_core/rules/round/bonus_game_rule.dart';

enum LayPieceBonusType { bridge, hexagon }

class LayPieceEventBuilder {
  final Player player;
  final Piece piece;
  final BonusGameRule rule;
  final List<GamePoint> _bonuses = [];

  LayPieceEventBuilder({
    required this.player,
    required this.piece,
    required this.rule,
  }) {
    _bonuses.add(GamePoint.layPiece(
      points: piece.side1 + piece.side2 + piece.side3,
      identifier: Identifier.uniq(),
    ));
  }

  LayPieceEventBuilder addBonus(LayPieceBonusType bonusType) {
    switch (bonusType) {
      case LayPieceBonusType.bridge:
        if (_bonuses.whereType<CreateBridgeGamePoint>().isNotEmpty) {
          return this;
        }

        _bonuses.add(
          GamePoint.createBridge(
            points: rule.bridgeBonus,
            identifier: Identifier.uniq(),
          ),
        );
        break;
      case LayPieceBonusType.hexagon:
        if (_bonuses.whereType<CreateHexagonGamePoint>().isNotEmpty) {
          return this;
        }

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

  LayPieceRoundEvent build() {
    return LayPieceRoundEvent(
      piece,
      id: Identifier.uniq(),
      player: player,
      gamePoints: _bonuses,
    );
  }
}
