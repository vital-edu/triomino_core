import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/round_event.dart';
import 'package:triomino_core/rules/player_status.dart';

part 'game_round.freezed.dart';

@freezed
class GameRound with _$GameRound {
  const GameRound._();

  const factory GameRound.onGoing({
    required int roundNumber,
    required List<RoundEvent> events,
    required List<PlayerStatus> statuses,
  }) = OnGoingGameRound;

  const factory GameRound.finished({
    required int roundNumber,
    required List<RoundEvent> events,
    required List<PlayerStatus> statuses,
  }) = FinishedGameRound;

  const factory GameRound.unknown({
    @Default(0) int roundNumber,
  }) = UnknownGameRound;

  List<Piece> get playedPieces => map(
        onGoing: (round) => round.statuses.fold<List<Piece>>(
          <Piece>[],
          (playedPieces, status) => [...playedPieces, ...status.playedPieces],
        ),
        finished: (round) => round.statuses.fold<List<Piece>>(
          <Piece>[],
          (playedPieces, status) => [...playedPieces, ...status.playedPieces],
        ),
        unknown: (round) => [],
      );

  List<PlayerStatus> get statuses => map(
        onGoing: (round) => round.statuses,
        finished: (round) => round.statuses,
        unknown: (round) => [],
      );

  List<RoundEvent> get events => map(
        onGoing: (round) => round.events,
        finished: (round) => round.events,
        unknown: (round) => [],
      );
}
