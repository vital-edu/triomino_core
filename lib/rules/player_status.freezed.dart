// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayerStatus {
  Player get player => throw _privateConstructorUsedError;
  int get piecesInPlayersHand => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  List<Piece> get playedPieces => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerStatusCopyWith<PlayerStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStatusCopyWith<$Res> {
  factory $PlayerStatusCopyWith(
          PlayerStatus value, $Res Function(PlayerStatus) then) =
      _$PlayerStatusCopyWithImpl<$Res>;
  $Res call(
      {Player player,
      int piecesInPlayersHand,
      int score,
      List<Piece> playedPieces});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class _$PlayerStatusCopyWithImpl<$Res> implements $PlayerStatusCopyWith<$Res> {
  _$PlayerStatusCopyWithImpl(this._value, this._then);

  final PlayerStatus _value;
  // ignore: unused_field
  final $Res Function(PlayerStatus) _then;

  @override
  $Res call({
    Object? player = freezed,
    Object? piecesInPlayersHand = freezed,
    Object? score = freezed,
    Object? playedPieces = freezed,
  }) {
    return _then(_value.copyWith(
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      piecesInPlayersHand: piecesInPlayersHand == freezed
          ? _value.piecesInPlayersHand
          : piecesInPlayersHand // ignore: cast_nullable_to_non_nullable
              as int,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      playedPieces: playedPieces == freezed
          ? _value.playedPieces
          : playedPieces // ignore: cast_nullable_to_non_nullable
              as List<Piece>,
    ));
  }

  @override
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value));
    });
  }
}

/// @nodoc
abstract class _$$_PlayerStatusCopyWith<$Res>
    implements $PlayerStatusCopyWith<$Res> {
  factory _$$_PlayerStatusCopyWith(
          _$_PlayerStatus value, $Res Function(_$_PlayerStatus) then) =
      __$$_PlayerStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {Player player,
      int piecesInPlayersHand,
      int score,
      List<Piece> playedPieces});

  @override
  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$_PlayerStatusCopyWithImpl<$Res>
    extends _$PlayerStatusCopyWithImpl<$Res>
    implements _$$_PlayerStatusCopyWith<$Res> {
  __$$_PlayerStatusCopyWithImpl(
      _$_PlayerStatus _value, $Res Function(_$_PlayerStatus) _then)
      : super(_value, (v) => _then(v as _$_PlayerStatus));

  @override
  _$_PlayerStatus get _value => super._value as _$_PlayerStatus;

  @override
  $Res call({
    Object? player = freezed,
    Object? piecesInPlayersHand = freezed,
    Object? score = freezed,
    Object? playedPieces = freezed,
  }) {
    return _then(_$_PlayerStatus(
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      piecesInPlayersHand: piecesInPlayersHand == freezed
          ? _value.piecesInPlayersHand
          : piecesInPlayersHand // ignore: cast_nullable_to_non_nullable
              as int,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      playedPieces: playedPieces == freezed
          ? _value._playedPieces
          : playedPieces // ignore: cast_nullable_to_non_nullable
              as List<Piece>,
    ));
  }
}

/// @nodoc

class _$_PlayerStatus implements _PlayerStatus {
  const _$_PlayerStatus(
      {required this.player,
      required this.piecesInPlayersHand,
      required this.score,
      final List<Piece> playedPieces = const []})
      : _playedPieces = playedPieces;

  @override
  final Player player;
  @override
  final int piecesInPlayersHand;
  @override
  final int score;
  final List<Piece> _playedPieces;
  @override
  @JsonKey()
  List<Piece> get playedPieces {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playedPieces);
  }

  @override
  String toString() {
    return 'PlayerStatus(player: $player, piecesInPlayersHand: $piecesInPlayersHand, score: $score, playedPieces: $playedPieces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerStatus &&
            const DeepCollectionEquality().equals(other.player, player) &&
            const DeepCollectionEquality()
                .equals(other.piecesInPlayersHand, piecesInPlayersHand) &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality()
                .equals(other._playedPieces, _playedPieces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(player),
      const DeepCollectionEquality().hash(piecesInPlayersHand),
      const DeepCollectionEquality().hash(score),
      const DeepCollectionEquality().hash(_playedPieces));

  @JsonKey(ignore: true)
  @override
  _$$_PlayerStatusCopyWith<_$_PlayerStatus> get copyWith =>
      __$$_PlayerStatusCopyWithImpl<_$_PlayerStatus>(this, _$identity);
}

abstract class _PlayerStatus implements PlayerStatus {
  const factory _PlayerStatus(
      {required final Player player,
      required final int piecesInPlayersHand,
      required final int score,
      final List<Piece> playedPieces}) = _$_PlayerStatus;

  @override
  Player get player => throw _privateConstructorUsedError;
  @override
  int get piecesInPlayersHand => throw _privateConstructorUsedError;
  @override
  int get score => throw _privateConstructorUsedError;
  @override
  List<Piece> get playedPieces => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerStatusCopyWith<_$_PlayerStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
