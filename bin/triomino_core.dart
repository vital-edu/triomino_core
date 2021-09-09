import 'package:triomino_core/game.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/game_utils.dart';
import 'package:triomino_core/player.dart';

void main(List<String> arguments) {
  final utils = GameUtils();
  final game = Game();

  final addPlayer1Event =
      GameEvent.addPlayer(utils.createRandomPlayer(game.events));
  game.add(addPlayer1Event);

  final addPlayer2Event =
      GameEvent.addPlayer(utils.createRandomPlayer(game.events));
  game.add(addPlayer2Event);

  utils.show(game.events);
}
