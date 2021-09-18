import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/rules/game_rule.dart';

import '../game_event.dart';

part 'player_validation_game_rule.freezed.dart';

@freezed
class PlayerValidationGameRule
    with _$PlayerValidationGameRule
    implements GameRule {
  const PlayerValidationGameRule._();

  @Implements(GameRule)
  const factory PlayerValidationGameRule() = _PlayerValidationGameRule;

  @override
  bool validate(List<GameEvent> events) {
    final players = events.whereType<AddPlayerEvent>().map((e) => e.player);
    final uniquePlayers = Set.from(players);

    return players.length == uniquePlayers.length;
  }
}
