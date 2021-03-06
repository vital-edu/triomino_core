import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/round_event.dart';

// TODO: verify if these extensions are required
extension ListExtension on List<GameEvent> {
  Iterable<Player> get players =>
      whereType<AddPlayerEvent>().map((e) => e.player);

  Iterable<Piece> get pieces =>
      whereType<LayPieceRoundEvent>().map((e) => e.piece);
}

extension SafeListExtension<E> on List<E> {
  E? safe({required int index}) {
    if (index < 0) return null;
    if (index >= length) return null;

    return this[index];
  }
}
