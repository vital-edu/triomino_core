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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points, Identifier identifier) layPiece,
    required TResult Function(int points, Identifier identifier) createBridge,
    required TResult Function(int points, Identifier identifier) createHexagon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points, Identifier identifier)? layPiece,
    TResult Function(int points, Identifier identifier)? createBridge,
    TResult Function(int points, Identifier identifier)? createHexagon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points, Identifier identifier)? layPiece,
    TResult Function(int points, Identifier identifier)? createBridge,
    TResult Function(int points, Identifier identifier)? createHexagon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LayPieceGamePoint value) layPiece,
    required TResult Function(CreateBridgeGamePoint value) createBridge,
    required TResult Function(CreateHexagonGamePoint value) createHexagon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LayPieceGamePoint value)? layPiece,
    TResult Function(CreateBridgeGamePoint value)? createBridge,
    TResult Function(CreateHexagonGamePoint value)? createHexagon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LayPieceGamePoint value)? layPiece,
    TResult Function(CreateBridgeGamePoint value)? createBridge,
    TResult Function(CreateHexagonGamePoint value)? createHexagon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
abstract class _$$LayPieceGamePointCopyWith<$Res>
    implements $GamePointCopyWith<$Res> {
  factory _$$LayPieceGamePointCopyWith(
          _$LayPieceGamePoint value, $Res Function(_$LayPieceGamePoint) then) =
      __$$LayPieceGamePointCopyWithImpl<$Res>;
  @override
  $Res call({int points, Identifier identifier});
}

/// @nodoc
class __$$LayPieceGamePointCopyWithImpl<$Res>
    extends _$GamePointCopyWithImpl<$Res>
    implements _$$LayPieceGamePointCopyWith<$Res> {
  __$$LayPieceGamePointCopyWithImpl(
      _$LayPieceGamePoint _value, $Res Function(_$LayPieceGamePoint) _then)
      : super(_value, (v) => _then(v as _$LayPieceGamePoint));

  @override
  _$LayPieceGamePoint get _value => super._value as _$LayPieceGamePoint;

  @override
  $Res call({
    Object? points = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$LayPieceGamePoint(
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

class _$LayPieceGamePoint extends LayPieceGamePoint {
  _$LayPieceGamePoint({required this.points, required this.identifier})
      : super._();

  @override
  final int points;
  @override
  final Identifier identifier;

  @override
  String toString() {
    return 'GamePoint.layPiece(points: $points, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayPieceGamePoint &&
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
  _$$LayPieceGamePointCopyWith<_$LayPieceGamePoint> get copyWith =>
      __$$LayPieceGamePointCopyWithImpl<_$LayPieceGamePoint>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points, Identifier identifier) layPiece,
    required TResult Function(int points, Identifier identifier) createBridge,
    required TResult Function(int points, Identifier identifier) createHexagon,
  }) {
    return layPiece(points, identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points, Identifier identifier)? layPiece,
    TResult Function(int points, Identifier identifier)? createBridge,
    TResult Function(int points, Identifier identifier)? createHexagon,
  }) {
    return layPiece?.call(points, identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points, Identifier identifier)? layPiece,
    TResult Function(int points, Identifier identifier)? createBridge,
    TResult Function(int points, Identifier identifier)? createHexagon,
    required TResult orElse(),
  }) {
    if (layPiece != null) {
      return layPiece(points, identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LayPieceGamePoint value) layPiece,
    required TResult Function(CreateBridgeGamePoint value) createBridge,
    required TResult Function(CreateHexagonGamePoint value) createHexagon,
  }) {
    return layPiece(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LayPieceGamePoint value)? layPiece,
    TResult Function(CreateBridgeGamePoint value)? createBridge,
    TResult Function(CreateHexagonGamePoint value)? createHexagon,
  }) {
    return layPiece?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LayPieceGamePoint value)? layPiece,
    TResult Function(CreateBridgeGamePoint value)? createBridge,
    TResult Function(CreateHexagonGamePoint value)? createHexagon,
    required TResult orElse(),
  }) {
    if (layPiece != null) {
      return layPiece(this);
    }
    return orElse();
  }
}

abstract class LayPieceGamePoint extends GamePoint {
  factory LayPieceGamePoint(
      {required final int points,
      required final Identifier identifier}) = _$LayPieceGamePoint;
  LayPieceGamePoint._() : super._();

  @override
  int get points => throw _privateConstructorUsedError;
  @override
  Identifier get identifier => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$LayPieceGamePointCopyWith<_$LayPieceGamePoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateBridgeGamePointCopyWith<$Res>
    implements $GamePointCopyWith<$Res> {
  factory _$$CreateBridgeGamePointCopyWith(_$CreateBridgeGamePoint value,
          $Res Function(_$CreateBridgeGamePoint) then) =
      __$$CreateBridgeGamePointCopyWithImpl<$Res>;
  @override
  $Res call({int points, Identifier identifier});
}

/// @nodoc
class __$$CreateBridgeGamePointCopyWithImpl<$Res>
    extends _$GamePointCopyWithImpl<$Res>
    implements _$$CreateBridgeGamePointCopyWith<$Res> {
  __$$CreateBridgeGamePointCopyWithImpl(_$CreateBridgeGamePoint _value,
      $Res Function(_$CreateBridgeGamePoint) _then)
      : super(_value, (v) => _then(v as _$CreateBridgeGamePoint));

  @override
  _$CreateBridgeGamePoint get _value => super._value as _$CreateBridgeGamePoint;

  @override
  $Res call({
    Object? points = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$CreateBridgeGamePoint(
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

class _$CreateBridgeGamePoint extends CreateBridgeGamePoint {
  _$CreateBridgeGamePoint({required this.points, required this.identifier})
      : super._();

  @override
  final int points;
  @override
  final Identifier identifier;

  @override
  String toString() {
    return 'GamePoint.createBridge(points: $points, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBridgeGamePoint &&
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
  _$$CreateBridgeGamePointCopyWith<_$CreateBridgeGamePoint> get copyWith =>
      __$$CreateBridgeGamePointCopyWithImpl<_$CreateBridgeGamePoint>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points, Identifier identifier) layPiece,
    required TResult Function(int points, Identifier identifier) createBridge,
    required TResult Function(int points, Identifier identifier) createHexagon,
  }) {
    return createBridge(points, identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points, Identifier identifier)? layPiece,
    TResult Function(int points, Identifier identifier)? createBridge,
    TResult Function(int points, Identifier identifier)? createHexagon,
  }) {
    return createBridge?.call(points, identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points, Identifier identifier)? layPiece,
    TResult Function(int points, Identifier identifier)? createBridge,
    TResult Function(int points, Identifier identifier)? createHexagon,
    required TResult orElse(),
  }) {
    if (createBridge != null) {
      return createBridge(points, identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LayPieceGamePoint value) layPiece,
    required TResult Function(CreateBridgeGamePoint value) createBridge,
    required TResult Function(CreateHexagonGamePoint value) createHexagon,
  }) {
    return createBridge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LayPieceGamePoint value)? layPiece,
    TResult Function(CreateBridgeGamePoint value)? createBridge,
    TResult Function(CreateHexagonGamePoint value)? createHexagon,
  }) {
    return createBridge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LayPieceGamePoint value)? layPiece,
    TResult Function(CreateBridgeGamePoint value)? createBridge,
    TResult Function(CreateHexagonGamePoint value)? createHexagon,
    required TResult orElse(),
  }) {
    if (createBridge != null) {
      return createBridge(this);
    }
    return orElse();
  }
}

abstract class CreateBridgeGamePoint extends GamePoint {
  factory CreateBridgeGamePoint(
      {required final int points,
      required final Identifier identifier}) = _$CreateBridgeGamePoint;
  CreateBridgeGamePoint._() : super._();

  @override
  int get points => throw _privateConstructorUsedError;
  @override
  Identifier get identifier => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateBridgeGamePointCopyWith<_$CreateBridgeGamePoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateHexagonGamePointCopyWith<$Res>
    implements $GamePointCopyWith<$Res> {
  factory _$$CreateHexagonGamePointCopyWith(_$CreateHexagonGamePoint value,
          $Res Function(_$CreateHexagonGamePoint) then) =
      __$$CreateHexagonGamePointCopyWithImpl<$Res>;
  @override
  $Res call({int points, Identifier identifier});
}

/// @nodoc
class __$$CreateHexagonGamePointCopyWithImpl<$Res>
    extends _$GamePointCopyWithImpl<$Res>
    implements _$$CreateHexagonGamePointCopyWith<$Res> {
  __$$CreateHexagonGamePointCopyWithImpl(_$CreateHexagonGamePoint _value,
      $Res Function(_$CreateHexagonGamePoint) _then)
      : super(_value, (v) => _then(v as _$CreateHexagonGamePoint));

  @override
  _$CreateHexagonGamePoint get _value =>
      super._value as _$CreateHexagonGamePoint;

  @override
  $Res call({
    Object? points = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$CreateHexagonGamePoint(
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

class _$CreateHexagonGamePoint extends CreateHexagonGamePoint {
  const _$CreateHexagonGamePoint(
      {required this.points, required this.identifier})
      : super._();

  @override
  final int points;
  @override
  final Identifier identifier;

  @override
  String toString() {
    return 'GamePoint.createHexagon(points: $points, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateHexagonGamePoint &&
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
  _$$CreateHexagonGamePointCopyWith<_$CreateHexagonGamePoint> get copyWith =>
      __$$CreateHexagonGamePointCopyWithImpl<_$CreateHexagonGamePoint>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points, Identifier identifier) layPiece,
    required TResult Function(int points, Identifier identifier) createBridge,
    required TResult Function(int points, Identifier identifier) createHexagon,
  }) {
    return createHexagon(points, identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points, Identifier identifier)? layPiece,
    TResult Function(int points, Identifier identifier)? createBridge,
    TResult Function(int points, Identifier identifier)? createHexagon,
  }) {
    return createHexagon?.call(points, identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points, Identifier identifier)? layPiece,
    TResult Function(int points, Identifier identifier)? createBridge,
    TResult Function(int points, Identifier identifier)? createHexagon,
    required TResult orElse(),
  }) {
    if (createHexagon != null) {
      return createHexagon(points, identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LayPieceGamePoint value) layPiece,
    required TResult Function(CreateBridgeGamePoint value) createBridge,
    required TResult Function(CreateHexagonGamePoint value) createHexagon,
  }) {
    return createHexagon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LayPieceGamePoint value)? layPiece,
    TResult Function(CreateBridgeGamePoint value)? createBridge,
    TResult Function(CreateHexagonGamePoint value)? createHexagon,
  }) {
    return createHexagon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LayPieceGamePoint value)? layPiece,
    TResult Function(CreateBridgeGamePoint value)? createBridge,
    TResult Function(CreateHexagonGamePoint value)? createHexagon,
    required TResult orElse(),
  }) {
    if (createHexagon != null) {
      return createHexagon(this);
    }
    return orElse();
  }
}

abstract class CreateHexagonGamePoint extends GamePoint {
  const factory CreateHexagonGamePoint(
      {required final int points,
      required final Identifier identifier}) = _$CreateHexagonGamePoint;
  const CreateHexagonGamePoint._() : super._();

  @override
  int get points => throw _privateConstructorUsedError;
  @override
  Identifier get identifier => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateHexagonGamePointCopyWith<_$CreateHexagonGamePoint> get copyWith =>
      throw _privateConstructorUsedError;
}
