import 'package:triomino_core/game_event.dart';

abstract class GameRuleError extends Error {
  final String message;

  GameRuleError(this.message);

  @override
  String toString() => message;
}

abstract class GameRule {
  void validate(List<GameEvent> events);
}
