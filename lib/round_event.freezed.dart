// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'round_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoundEvent {
  Piece get piece => throw _privateConstructorUsedError;
  Player get player => throw _privateConstructorUsedError;
  Identifier get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Piece piece, List<GamePoint> gamePoints,
            Player player, Identifier id)
        layPiece,
    required TResult Function(Piece piece, Player player, Identifier id)
        drawPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LayPieceRoundEvent value) layPiece,
    required TResult Function(DrawPieceRoundEvent value) drawPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LayPieceRoundEvent value)? layPiece,
    TResult Function(DrawPieceRoundEvent value)? drawPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LayPieceRoundEvent value)? layPiece,
    TResult Function(DrawPieceRoundEvent value)? drawPiece,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoundEventCopyWith<RoundEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoundEventCopyWith<$Res> {
  factory $RoundEventCopyWith(
          RoundEvent value, $Res Function(RoundEvent) then) =
      _$RoundEventCopyWithImpl<$Res>;
  $Res call({Piece piece, Player player, Identifier id});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class _$RoundEventCopyWithImpl<$Res> implements $RoundEventCopyWith<$Res> {
  _$RoundEventCopyWithImpl(this._value, this._then);

  final RoundEvent _value;
  // ignore: unused_field
  final $Res Function(RoundEvent) _then;

  @override
  $Res call({
    Object? piece = freezed,
    Object? player = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Piece,
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
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
abstract class _$$LayPieceRoundEventCopyWith<$Res>
    implements $RoundEventCopyWith<$Res> {
  factory _$$LayPieceRoundEventCopyWith(_$LayPieceRoundEvent value,
          $Res Function(_$LayPieceRoundEvent) then) =
      __$$LayPieceRoundEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {Piece piece, List<GamePoint> gamePoints, Player player, Identifier id});

  @override
  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$LayPieceRoundEventCopyWithImpl<$Res>
    extends _$RoundEventCopyWithImpl<$Res>
    implements _$$LayPieceRoundEventCopyWith<$Res> {
  __$$LayPieceRoundEventCopyWithImpl(
      _$LayPieceRoundEvent _value, $Res Function(_$LayPieceRoundEvent) _then)
      : super(_value, (v) => _then(v as _$LayPieceRoundEvent));

  @override
  _$LayPieceRoundEvent get _value => super._value as _$LayPieceRoundEvent;

  @override
  $Res call({
    Object? piece = freezed,
    Object? gamePoints = freezed,
    Object? player = freezed,
    Object? id = freezed,
  }) {
    return _then(_$LayPieceRoundEvent(
      piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Piece,
      gamePoints: gamePoints == freezed
          ? _value._gamePoints
          : gamePoints // ignore: cast_nullable_to_non_nullable
              as List<GamePoint>,
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
    ));
  }
}

/// @nodoc

class _$LayPieceRoundEvent implements LayPieceRoundEvent {
  const _$LayPieceRoundEvent(this.piece,
      {required final List<GamePoint> gamePoints,
      required this.player,
      required this.id})
      : _gamePoints = gamePoints;

  @override
  final Piece piece;
  final List<GamePoint> _gamePoints;
  @override
  List<GamePoint> get gamePoints {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gamePoints);
  }

  @override
  final Player player;
  @override
  final Identifier id;

  @override
  String toString() {
    return 'RoundEvent.layPiece(piece: $piece, gamePoints: $gamePoints, player: $player, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayPieceRoundEvent &&
            const DeepCollectionEquality().equals(other.piece, piece) &&
            const DeepCollectionEquality()
                .equals(other._gamePoints, _gamePoints) &&
            const DeepCollectionEquality().equals(other.player, player) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(piece),
      const DeepCollectionEquality().hash(_gamePoints),
      const DeepCollectionEquality().hash(player),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$LayPieceRoundEventCopyWith<_$LayPieceRoundEvent> get copyWith =>
      __$$LayPieceRoundEventCopyWithImpl<_$LayPieceRoundEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Piece piece, List<GamePoint> gamePoints,
            Player player, Identifier id)
        layPiece,
    required TResult Function(Piece piece, Player player, Identifier id)
        drawPiece,
  }) {
    return layPiece(piece, gamePoints, player, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
  }) {
    return layPiece?.call(piece, gamePoints, player, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
    required TResult orElse(),
  }) {
    if (layPiece != null) {
      return layPiece(piece, gamePoints, player, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LayPieceRoundEvent value) layPiece,
    required TResult Function(DrawPieceRoundEvent value) drawPiece,
  }) {
    return layPiece(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LayPieceRoundEvent value)? layPiece,
    TResult Function(DrawPieceRoundEvent value)? drawPiece,
  }) {
    return layPiece?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LayPieceRoundEvent value)? layPiece,
    TResult Function(DrawPieceRoundEvent value)? drawPiece,
    required TResult orElse(),
  }) {
    if (layPiece != null) {
      return layPiece(this);
    }
    return orElse();
  }
}

abstract class LayPieceRoundEvent implements RoundEvent {
  const factory LayPieceRoundEvent(final Piece piece,
      {required final List<GamePoint> gamePoints,
      required final Player player,
      required final Identifier id}) = _$LayPieceRoundEvent;

  @override
  Piece get piece => throw _privateConstructorUsedError;
  List<GamePoint> get gamePoints => throw _privateConstructorUsedError;
  @override
  Player get player => throw _privateConstructorUsedError;
  @override
  Identifier get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$LayPieceRoundEventCopyWith<_$LayPieceRoundEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DrawPieceRoundEventCopyWith<$Res>
    implements $RoundEventCopyWith<$Res> {
  factory _$$DrawPieceRoundEventCopyWith(_$DrawPieceRoundEvent value,
          $Res Function(_$DrawPieceRoundEvent) then) =
      __$$DrawPieceRoundEventCopyWithImpl<$Res>;
  @override
  $Res call({Piece piece, Player player, Identifier id});

  @override
  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$DrawPieceRoundEventCopyWithImpl<$Res>
    extends _$RoundEventCopyWithImpl<$Res>
    implements _$$DrawPieceRoundEventCopyWith<$Res> {
  __$$DrawPieceRoundEventCopyWithImpl(
      _$DrawPieceRoundEvent _value, $Res Function(_$DrawPieceRoundEvent) _then)
      : super(_value, (v) => _then(v as _$DrawPieceRoundEvent));

  @override
  _$DrawPieceRoundEvent get _value => super._value as _$DrawPieceRoundEvent;

  @override
  $Res call({
    Object? piece = freezed,
    Object? player = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DrawPieceRoundEvent(
      piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as Piece,
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
    ));
  }
}

/// @nodoc

class _$DrawPieceRoundEvent implements DrawPieceRoundEvent {
  const _$DrawPieceRoundEvent(this.piece,
      {required this.player, required this.id});

  @override
  final Piece piece;
  @override
  final Player player;
  @override
  final Identifier id;

  @override
  String toString() {
    return 'RoundEvent.drawPiece(piece: $piece, player: $player, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawPieceRoundEvent &&
            const DeepCollectionEquality().equals(other.piece, piece) &&
            const DeepCollectionEquality().equals(other.player, player) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(piece),
      const DeepCollectionEquality().hash(player),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$DrawPieceRoundEventCopyWith<_$DrawPieceRoundEvent> get copyWith =>
      __$$DrawPieceRoundEventCopyWithImpl<_$DrawPieceRoundEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Piece piece, List<GamePoint> gamePoints,
            Player player, Identifier id)
        layPiece,
    required TResult Function(Piece piece, Player player, Identifier id)
        drawPiece,
  }) {
    return drawPiece(piece, player, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
  }) {
    return drawPiece?.call(piece, player, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
    required TResult orElse(),
  }) {
    if (drawPiece != null) {
      return drawPiece(piece, player, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LayPieceRoundEvent value) layPiece,
    required TResult Function(DrawPieceRoundEvent value) drawPiece,
  }) {
    return drawPiece(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LayPieceRoundEvent value)? layPiece,
    TResult Function(DrawPieceRoundEvent value)? drawPiece,
  }) {
    return drawPiece?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LayPieceRoundEvent value)? layPiece,
    TResult Function(DrawPieceRoundEvent value)? drawPiece,
    required TResult orElse(),
  }) {
    if (drawPiece != null) {
      return drawPiece(this);
    }
    return orElse();
  }
}

abstract class DrawPieceRoundEvent implements RoundEvent {
  const factory DrawPieceRoundEvent(final Piece piece,
      {required final Player player,
      required final Identifier id}) = _$DrawPieceRoundEvent;

  @override
  Piece get piece => throw _privateConstructorUsedError;
  @override
  Player get player => throw _privateConstructorUsedError;
  @override
  Identifier get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DrawPieceRoundEventCopyWith<_$DrawPieceRoundEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
