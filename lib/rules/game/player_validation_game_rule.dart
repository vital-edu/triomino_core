import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/rules/errors/player_validation_game_rule_error.dart';
import 'package:triomino_core/rules/game_rule.dart';

class PlayerValidationGameRule implements GameRule {
  @override
  void validate(List<GameEvent> events) {
    final repeatedEvents = <AddPlayerEvent>[];
    final uniquePlayers = <Player>{};

    for (final event in events.whereType<AddPlayerEvent>()) {
      final added = uniquePlayers.add(event.player);
      if (!added) {
        repeatedEvents.add(event);
      }
    }

    if (repeatedEvents.isNotEmpty) {
      throw PlayerValidationGameRuleError(repeatedEvents);
    }
  }
}
