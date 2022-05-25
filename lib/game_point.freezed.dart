// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GamePoint {
  int get points => throw _privateConstructorUsedError;
  Identifier get identifier => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamePointCopyWith<GamePoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePointCopyWith<$Res> {
  factory $GamePointCopyWith(GamePoint value, $Res Function(GamePoint) then) =
      _$GamePointCopyWithImpl<$Res>;
  $Res call({int points, Identifier identifier});
}

/// @nodoc
class _$GamePointCopyWithImpl<$Res> implements $GamePointCopyWith<$Res> {
  _$GamePointCopyWithImpl(this._value, this._then);

  final GamePoint _value;
  // ignore: unused_field
  final $Res Function(GamePoint) _then;

  @override
  $Res call({
    Object? points = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier,
    ));
  }
}

/// @nodoc
abstract class _$$_GamePointCopyWith<$Res> implements $GamePointCopyWith<$Res> {
  factory _$$_GamePointCopyWith(
          _$_GamePoint value, $Res Function(_$_GamePoint) then) =
      __$$_GamePointCopyWithImpl<$Res>;
  @override
  $Res call({int points, Identifier identifier});
}

/// @nodoc
class __$$_GamePointCopyWithImpl<$Res> extends _$GamePointCopyWithImpl<$Res>
    implements _$$_GamePointCopyWith<$Res> {
  __$$_GamePointCopyWithImpl(
      _$_GamePoint _value, $Res Function(_$_GamePoint) _then)
      : super(_value, (v) => _then(v as _$_GamePoint));

  @override
  _$_GamePoint get _value => super._value as _$_GamePoint;

  @override
  $Res call({
    Object? points = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$_GamePoint(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier,
    ));
  }
}

/// @nodoc

class _$_GamePoint extends _GamePoint {
  const _$_GamePoint({required this.points, required this.identifier})
      : super._();

  @override
  final int points;
  @override
  final Identifier identifier;

  @override
  String toString() {
    return 'GamePoint(points: $points, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GamePoint &&
            const DeepCollectionEquality().equals(other.points, points) &&
            const DeepCollectionEquality()
                .equals(other.identifier, identifier));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(points),
      const DeepCollectionEquality().hash(identifier));

  @JsonKey(ignore: true)
  @override
  _$$_GamePointCopyWith<_$_GamePoint> get copyWith =>
      __$$_GamePointCopyWithImpl<_$_GamePoint>(this, _$identity);
}

abstract class _GamePoint extends GamePoint {
  const factory _GamePoint(
      {required final int points,
      required final Identifier identifier}) = _$_GamePoint;
  const _GamePoint._() : super._();

  @override
  int get points => throw _privateConstructorUsedError;
  @override
  Identifier get identifier => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GamePointCopyWith<_$_GamePoint> get copyWith =>
      throw _privateConstructorUsedError;
}
