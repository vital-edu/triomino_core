// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameEvent {
  Identifier get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player, Identifier id) addPlayer,
    required TResult Function(Identifier id) startGame,
    required TResult Function(LayPieceGameEvent event, Identifier id)
        startRound,
    required TResult Function(Piece piece, List<GamePoint> gamePoints,
            Player player, Identifier id)
        layPiece,
    required TResult Function(Piece piece, Player player, Identifier id)
        drawPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(LayPieceGameEvent event, Identifier id)? startRound,
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(LayPieceGameEvent event, Identifier id)? startRound,
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPlayerEvent value) addPlayer,
    required TResult Function(StartGameEvent value) startGame,
    required TResult Function(StartRoundGameEvent value) startRound,
    required TResult Function(LayPieceGameEvent value) layPiece,
    required TResult Function(DrawPieceGameEvent value) drawPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(StartRoundGameEvent value)? startRound,
    TResult Function(LayPieceGameEvent value)? layPiece,
    TResult Function(DrawPieceGameEvent value)? drawPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(StartRoundGameEvent value)? startRound,
    TResult Function(LayPieceGameEvent value)? layPiece,
    TResult Function(DrawPieceGameEvent value)? drawPiece,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameEventCopyWith<GameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res>;
  $Res call({Identifier id});
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res> implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  final GameEvent _value;
  // ignore: unused_field
  final $Res Function(GameEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
    ));
  }
}

/// @nodoc
abstract class _$$AddPlayerEventCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory _$$AddPlayerEventCopyWith(
          _$AddPlayerEvent value, $Res Function(_$AddPlayerEvent) then) =
      __$$AddPlayerEventCopyWithImpl<$Res>;
  @override
  $Res call({Player player, Identifier id});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$AddPlayerEventCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$$AddPlayerEventCopyWith<$Res> {
  __$$AddPlayerEventCopyWithImpl(
      _$AddPlayerEvent _value, $Res Function(_$AddPlayerEvent) _then)
      : super(_value, (v) => _then(v as _$AddPlayerEvent));

  @override
  _$AddPlayerEvent get _value => super._value as _$AddPlayerEvent;

  @override
  $Res call({
    Object? player = freezed,
    Object? id = freezed,
  }) {
    return _then(_$AddPlayerEvent(
      player == freezed
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

class _$AddPlayerEvent extends AddPlayerEvent {
  const _$AddPlayerEvent(this.player, {required this.id}) : super._();

  @override
  final Player player;
  @override
  final Identifier id;

  @override
  String toString() {
    return 'GameEvent.addPlayer(player: $player, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPlayerEvent &&
            const DeepCollectionEquality().equals(other.player, player) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(player),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$AddPlayerEventCopyWith<_$AddPlayerEvent> get copyWith =>
      __$$AddPlayerEventCopyWithImpl<_$AddPlayerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player, Identifier id) addPlayer,
    required TResult Function(Identifier id) startGame,
    required TResult Function(LayPieceGameEvent event, Identifier id)
        startRound,
    required TResult Function(Piece piece, List<GamePoint> gamePoints,
            Player player, Identifier id)
        layPiece,
    required TResult Function(Piece piece, Player player, Identifier id)
        drawPiece,
  }) {
    return addPlayer(player, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(LayPieceGameEvent event, Identifier id)? startRound,
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
  }) {
    return addPlayer?.call(player, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(LayPieceGameEvent event, Identifier id)? startRound,
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
    required TResult orElse(),
  }) {
    if (addPlayer != null) {
      return addPlayer(player, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPlayerEvent value) addPlayer,
    required TResult Function(StartGameEvent value) startGame,
    required TResult Function(StartRoundGameEvent value) startRound,
    required TResult Function(LayPieceGameEvent value) layPiece,
    required TResult Function(DrawPieceGameEvent value) drawPiece,
  }) {
    return addPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(StartRoundGameEvent value)? startRound,
    TResult Function(LayPieceGameEvent value)? layPiece,
    TResult Function(DrawPieceGameEvent value)? drawPiece,
  }) {
    return addPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(StartRoundGameEvent value)? startRound,
    TResult Function(LayPieceGameEvent value)? layPiece,
    TResult Function(DrawPieceGameEvent value)? drawPiece,
    required TResult orElse(),
  }) {
    if (addPlayer != null) {
      return addPlayer(this);
    }
    return orElse();
  }
}

abstract class AddPlayerEvent extends GameEvent {
  const factory AddPlayerEvent(final Player player,
      {required final Identifier id}) = _$AddPlayerEvent;
  const AddPlayerEvent._() : super._();

  Player get player => throw _privateConstructorUsedError;
  @override
  Identifier get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$AddPlayerEventCopyWith<_$AddPlayerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartGameEventCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory _$$StartGameEventCopyWith(
          _$StartGameEvent value, $Res Function(_$StartGameEvent) then) =
      __$$StartGameEventCopyWithImpl<$Res>;
  @override
  $Res call({Identifier id});
}

/// @nodoc
class __$$StartGameEventCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$$StartGameEventCopyWith<$Res> {
  __$$StartGameEventCopyWithImpl(
      _$StartGameEvent _value, $Res Function(_$StartGameEvent) _then)
      : super(_value, (v) => _then(v as _$StartGameEvent));

  @override
  _$StartGameEvent get _value => super._value as _$StartGameEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$StartGameEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
    ));
  }
}

/// @nodoc

class _$StartGameEvent extends StartGameEvent {
  const _$StartGameEvent({required this.id}) : super._();

  @override
  final Identifier id;

  @override
  String toString() {
    return 'GameEvent.startGame(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartGameEvent &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$StartGameEventCopyWith<_$StartGameEvent> get copyWith =>
      __$$StartGameEventCopyWithImpl<_$StartGameEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player, Identifier id) addPlayer,
    required TResult Function(Identifier id) startGame,
    required TResult Function(LayPieceGameEvent event, Identifier id)
        startRound,
    required TResult Function(Piece piece, List<GamePoint> gamePoints,
            Player player, Identifier id)
        layPiece,
    required TResult Function(Piece piece, Player player, Identifier id)
        drawPiece,
  }) {
    return startGame(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(LayPieceGameEvent event, Identifier id)? startRound,
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
  }) {
    return startGame?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(LayPieceGameEvent event, Identifier id)? startRound,
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPlayerEvent value) addPlayer,
    required TResult Function(StartGameEvent value) startGame,
    required TResult Function(StartRoundGameEvent value) startRound,
    required TResult Function(LayPieceGameEvent value) layPiece,
    required TResult Function(DrawPieceGameEvent value) drawPiece,
  }) {
    return startGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(StartRoundGameEvent value)? startRound,
    TResult Function(LayPieceGameEvent value)? layPiece,
    TResult Function(DrawPieceGameEvent value)? drawPiece,
  }) {
    return startGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(StartRoundGameEvent value)? startRound,
    TResult Function(LayPieceGameEvent value)? layPiece,
    TResult Function(DrawPieceGameEvent value)? drawPiece,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(this);
    }
    return orElse();
  }
}

abstract class StartGameEvent extends GameEvent {
  const factory StartGameEvent({required final Identifier id}) =
      _$StartGameEvent;
  const StartGameEvent._() : super._();

  @override
  Identifier get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$StartGameEventCopyWith<_$StartGameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartRoundGameEventCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory _$$StartRoundGameEventCopyWith(_$StartRoundGameEvent value,
          $Res Function(_$StartRoundGameEvent) then) =
      __$$StartRoundGameEventCopyWithImpl<$Res>;
  @override
  $Res call({LayPieceGameEvent event, Identifier id});
}

/// @nodoc
class __$$StartRoundGameEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res>
    implements _$$StartRoundGameEventCopyWith<$Res> {
  __$$StartRoundGameEventCopyWithImpl(
      _$StartRoundGameEvent _value, $Res Function(_$StartRoundGameEvent) _then)
      : super(_value, (v) => _then(v as _$StartRoundGameEvent));

  @override
  _$StartRoundGameEvent get _value => super._value as _$StartRoundGameEvent;

  @override
  $Res call({
    Object? event = freezed,
    Object? id = freezed,
  }) {
    return _then(_$StartRoundGameEvent(
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as LayPieceGameEvent,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
    ));
  }
}

/// @nodoc

class _$StartRoundGameEvent extends StartRoundGameEvent {
  const _$StartRoundGameEvent(this.event, {required this.id}) : super._();

  @override
  final LayPieceGameEvent event;
  @override
  final Identifier id;

  @override
  String toString() {
    return 'GameEvent.startRound(event: $event, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartRoundGameEvent &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$StartRoundGameEventCopyWith<_$StartRoundGameEvent> get copyWith =>
      __$$StartRoundGameEventCopyWithImpl<_$StartRoundGameEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player, Identifier id) addPlayer,
    required TResult Function(Identifier id) startGame,
    required TResult Function(LayPieceGameEvent event, Identifier id)
        startRound,
    required TResult Function(Piece piece, List<GamePoint> gamePoints,
            Player player, Identifier id)
        layPiece,
    required TResult Function(Piece piece, Player player, Identifier id)
        drawPiece,
  }) {
    return startRound(event, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(LayPieceGameEvent event, Identifier id)? startRound,
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
  }) {
    return startRound?.call(event, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(LayPieceGameEvent event, Identifier id)? startRound,
    TResult Function(Piece piece, List<GamePoint> gamePoints, Player player,
            Identifier id)?
        layPiece,
    TResult Function(Piece piece, Player player, Identifier id)? drawPiece,
    required TResult orElse(),
  }) {
    if (startRound != null) {
      return startRound(event, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPlayerEvent value) addPlayer,
    required TResult Function(StartGameEvent value) startGame,
    required TResult Function(StartRoundGameEvent value) startRound,
    required TResult Function(LayPieceGameEvent value) layPiece,
    required TResult Function(DrawPieceGameEvent value) drawPiece,
  }) {
    return startRound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(StartRoundGameEvent value)? startRound,
    TResult Function(LayPieceGameEvent value)? layPiece,
    TResult Function(DrawPieceGameEvent value)? drawPiece,
  }) {
    return startRound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(StartRoundGameEvent value)? startRound,
    TResult Function(LayPieceGameEvent value)? layPiece,
    TResult Function(DrawPieceGameEvent value)? drawPiece,
    required TResult orElse(),
  }) {
    if (startRound != null) {
      return startRound(this);
    }
    return orElse();
  }
}

abstract class StartRoundGameEvent extends GameEvent {
  const factory StartRoundGameEvent(final LayPieceGameEvent event,
      {required final Identifier id}) = _$StartRoundGameEvent;
  const StartRoundGameEvent._() : super._();

  LayPieceGameEvent get event => throw _privateConstructorUsedError;
  @override
  Identifier get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$StartRoundGameEventCopyWith<_$StartRoundGameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LayPieceGameEventCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory _$$LayPieceGameEventCopyWith(
          _$LayPieceGameEvent value, $Res Function(_$LayPieceGameEvent) then) =
      __$$LayPieceGameEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {Piece piece, List<GamePoint> gamePoints, Player player, Identifier id});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$LayPieceGameEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res>
    implements _$$LayPieceGameEventCopyWith<$Res> {
  __$$LayPieceGameEventCopyWithImpl(
      _$LayPieceGameEvent _value, $Res Function(_$LayPieceGameEvent) _then)
      : super(_value, (v) => _then(v as _$LayPieceGameEvent));

  @override
  _$LayPieceGameEvent get _value => super._value as _$LayPieceGameEvent;

  @override
  $Res call({
    Object? piece = freezed,
    Object? gamePoints = freezed,
    Object? player = freezed,
    Object? id = freezed,
  }) {
    return _then(_$LayPieceGameEvent(
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

  @override
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value));
    });
  }
}

/// @nodoc

class _$LayPieceGameEvent extends LayPieceGameEvent {
  const _$LayPieceGameEvent(this.piece,
      {required final List<GamePoint> gamePoints,
      required this.player,
      required this.id})
      : _gamePoints = gamePoints,
        super._();

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
    return 'GameEvent.layPiece(piece: $piece, gamePoints: $gamePoints, player: $player, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayPieceGameEvent &&
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
  _$$LayPieceGameEventCopyWith<_$LayPieceGameEvent> get copyWith =>
      __$$LayPieceGameEventCopyWithImpl<_$LayPieceGameEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player, Identifier id) addPlayer,
    required TResult Function(Identifier id) startGame,
    required TResult Function(LayPieceGameEvent event, Identifier id)
        startRound,
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
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(LayPieceGameEvent event, Identifier id)? startRound,
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
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(LayPieceGameEvent event, Identifier id)? startRound,
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
    required TResult Function(AddPlayerEvent value) addPlayer,
    required TResult Function(StartGameEvent value) startGame,
    required TResult Function(StartRoundGameEvent value) startRound,
    required TResult Function(LayPieceGameEvent value) layPiece,
    required TResult Function(DrawPieceGameEvent value) drawPiece,
  }) {
    return layPiece(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(StartRoundGameEvent value)? startRound,
    TResult Function(LayPieceGameEvent value)? layPiece,
    TResult Function(DrawPieceGameEvent value)? drawPiece,
  }) {
    return layPiece?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(StartRoundGameEvent value)? startRound,
    TResult Function(LayPieceGameEvent value)? layPiece,
    TResult Function(DrawPieceGameEvent value)? drawPiece,
    required TResult orElse(),
  }) {
    if (layPiece != null) {
      return layPiece(this);
    }
    return orElse();
  }
}

abstract class LayPieceGameEvent extends GameEvent {
  const factory LayPieceGameEvent(final Piece piece,
      {required final List<GamePoint> gamePoints,
      required final Player player,
      required final Identifier id}) = _$LayPieceGameEvent;
  const LayPieceGameEvent._() : super._();

  Piece get piece => throw _privateConstructorUsedError;
  List<GamePoint> get gamePoints => throw _privateConstructorUsedError;
  Player get player => throw _privateConstructorUsedError;
  @override
  Identifier get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$LayPieceGameEventCopyWith<_$LayPieceGameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DrawPieceGameEventCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory _$$DrawPieceGameEventCopyWith(_$DrawPieceGameEvent value,
          $Res Function(_$DrawPieceGameEvent) then) =
      __$$DrawPieceGameEventCopyWithImpl<$Res>;
  @override
  $Res call({Piece piece, Player player, Identifier id});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$DrawPieceGameEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res>
    implements _$$DrawPieceGameEventCopyWith<$Res> {
  __$$DrawPieceGameEventCopyWithImpl(
      _$DrawPieceGameEvent _value, $Res Function(_$DrawPieceGameEvent) _then)
      : super(_value, (v) => _then(v as _$DrawPieceGameEvent));

  @override
  _$DrawPieceGameEvent get _value => super._value as _$DrawPieceGameEvent;

  @override
  $Res call({
    Object? piece = freezed,
    Object? player = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DrawPieceGameEvent(
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

  @override
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value));
    });
  }
}

/// @nodoc

class _$DrawPieceGameEvent extends DrawPieceGameEvent {
  const _$DrawPieceGameEvent(this.piece,
      {required this.player, required this.id})
      : super._();

  @override
  final Piece piece;
  @override
  final Player player;
  @override
  final Identifier id;

  @override
  String toString() {
    return 'GameEvent.drawPiece(piece: $piece, player: $player, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawPieceGameEvent &&
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
  _$$DrawPieceGameEventCopyWith<_$DrawPieceGameEvent> get copyWith =>
      __$$DrawPieceGameEventCopyWithImpl<_$DrawPieceGameEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player, Identifier id) addPlayer,
    required TResult Function(Identifier id) startGame,
    required TResult Function(LayPieceGameEvent event, Identifier id)
        startRound,
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
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(LayPieceGameEvent event, Identifier id)? startRound,
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
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(LayPieceGameEvent event, Identifier id)? startRound,
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
    required TResult Function(AddPlayerEvent value) addPlayer,
    required TResult Function(StartGameEvent value) startGame,
    required TResult Function(StartRoundGameEvent value) startRound,
    required TResult Function(LayPieceGameEvent value) layPiece,
    required TResult Function(DrawPieceGameEvent value) drawPiece,
  }) {
    return drawPiece(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(StartRoundGameEvent value)? startRound,
    TResult Function(LayPieceGameEvent value)? layPiece,
    TResult Function(DrawPieceGameEvent value)? drawPiece,
  }) {
    return drawPiece?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(StartRoundGameEvent value)? startRound,
    TResult Function(LayPieceGameEvent value)? layPiece,
    TResult Function(DrawPieceGameEvent value)? drawPiece,
    required TResult orElse(),
  }) {
    if (drawPiece != null) {
      return drawPiece(this);
    }
    return orElse();
  }
}

abstract class DrawPieceGameEvent extends GameEvent {
  const factory DrawPieceGameEvent(final Piece piece,
      {required final Player player,
      required final Identifier id}) = _$DrawPieceGameEvent;
  const DrawPieceGameEvent._() : super._();

  Piece get piece => throw _privateConstructorUsedError;
  Player get player => throw _privateConstructorUsedError;
  @override
  Identifier get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DrawPieceGameEventCopyWith<_$DrawPieceGameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
