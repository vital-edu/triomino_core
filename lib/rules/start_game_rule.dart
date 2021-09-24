import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/rules/errors/game_already_started_error.dart';
import 'package:triomino_core/rules/game_rule.dart';

part 'start_game_rule.freezed.dart';

@freezed
class StartGameRule with _$StartGameRule implements GameRule {
  const StartGameRule._();

  @Implements(GameRule)
  const factory StartGameRule() = _StartGameRule;

  @override
  void validate(List<GameEvent> events) {
    if (events.whereType<StartGameEvent>().length > 1) {
      throw GameAlreadyStartedError();
    }
  }
}
