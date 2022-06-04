import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/round_event.dart';
import 'package:triomino_core/rules/game_rule.dart';

// TODO: finish it
class RoundGameRule extends GameRule {
  @override
  void validate(List<GameEvent> events) {
    final layPieceEvents = events.whereType<LayPieceRoundEvent>();
    final addplayerEvents = events.whereType<AddPlayerEvent>();
  }
}
