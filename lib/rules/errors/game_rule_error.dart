abstract class GameRuleError extends Error {
  final String message;

  GameRuleError(this.message);

  @override
  String toString() => message;
}
