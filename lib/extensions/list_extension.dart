import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';

extension ListExtension on List<GameEvent> {
  Iterable<Player> get players =>
      whereType<AddPlayerEvent>().map((e) => e.player);

  Iterable<Piece> get pieces =>
      whereType<LayPieceGameEvent>().map((e) => e.piece);
}
