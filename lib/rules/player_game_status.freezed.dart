// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_game_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayerGameStatus {
  Player get player => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerGameStatusCopyWith<PlayerGameStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerGameStatusCopyWith<$Res> {
  factory $PlayerGameStatusCopyWith(
          PlayerGameStatus value, $Res Function(PlayerGameStatus) then) =
      _$PlayerGameStatusCopyWithImpl<$Res>;
  $Res call({Player player, int score});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class _$PlayerGameStatusCopyWithImpl<$Res>
    implements $PlayerGameStatusCopyWith<$Res> {
  _$PlayerGameStatusCopyWithImpl(this._value, this._then);

  final PlayerGameStatus _value;
  // ignore: unused_field
  final $Res Function(PlayerGameStatus) _then;

  @override
  $Res call({
    Object? player = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_PlayerGameStatusCopyWith<$Res>
    implements $PlayerGameStatusCopyWith<$Res> {
  factory _$$_PlayerGameStatusCopyWith(
          _$_PlayerGameStatus value, $Res Function(_$_PlayerGameStatus) then) =
      __$$_PlayerGameStatusCopyWithImpl<$Res>;
  @override
  $Res call({Player player, int score});

  @override
  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$_PlayerGameStatusCopyWithImpl<$Res>
    extends _$PlayerGameStatusCopyWithImpl<$Res>
    implements _$$_PlayerGameStatusCopyWith<$Res> {
  __$$_PlayerGameStatusCopyWithImpl(
      _$_PlayerGameStatus _value, $Res Function(_$_PlayerGameStatus) _then)
      : super(_value, (v) => _then(v as _$_PlayerGameStatus));

  @override
  _$_PlayerGameStatus get _value => super._value as _$_PlayerGameStatus;

  @override
  $Res call({
    Object? player = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_PlayerGameStatus(
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PlayerGameStatus implements _PlayerGameStatus {
  const _$_PlayerGameStatus({required this.player, required this.score});

  @override
  final Player player;
  @override
  final int score;

  @override
  String toString() {
    return 'PlayerGameStatus(player: $player, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerGameStatus &&
            const DeepCollectionEquality().equals(other.player, player) &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(player),
      const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  _$$_PlayerGameStatusCopyWith<_$_PlayerGameStatus> get copyWith =>
      __$$_PlayerGameStatusCopyWithImpl<_$_PlayerGameStatus>(this, _$identity);
}

abstract class _PlayerGameStatus implements PlayerGameStatus {
  const factory _PlayerGameStatus(
      {required final Player player,
      required final int score}) = _$_PlayerGameStatus;

  @override
  Player get player => throw _privateConstructorUsedError;
  @override
  int get score => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerGameStatusCopyWith<_$_PlayerGameStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
