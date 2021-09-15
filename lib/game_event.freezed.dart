// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameEventTearOff {
  const _$GameEventTearOff();

  AddPlayerEvent addPlayer(Player player, {required Identifier id}) {
    return AddPlayerEvent(
      player,
      id: id,
    );
  }

  StartGameEvent startGame({required Identifier id}) {
    return StartGameEvent(
      id: id,
    );
  }

  LayPieceGameEvent layPiece(Piece piece,
      {required Player player, required Identifier id}) {
    return LayPieceGameEvent(
      piece,
      player: player,
      id: id,
    );
  }
}

/// @nodoc
const $GameEvent = _$GameEventTearOff();

/// @nodoc
mixin _$GameEvent {
  Identifier get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player, Identifier id) addPlayer,
    required TResult Function(Identifier id) startGame,
    required TResult Function(Piece piece, Player player, Identifier id)
        layPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(Piece piece, Player player, Identifier id)? layPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(Piece piece, Player player, Identifier id)? layPiece,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPlayerEvent value) addPlayer,
    required TResult Function(StartGameEvent value) startGame,
    required TResult Function(LayPieceGameEvent value) layPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(LayPieceGameEvent value)? layPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(LayPieceGameEvent value)? layPiece,
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
abstract class $AddPlayerEventCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory $AddPlayerEventCopyWith(
          AddPlayerEvent value, $Res Function(AddPlayerEvent) then) =
      _$AddPlayerEventCopyWithImpl<$Res>;
  @override
  $Res call({Player player, Identifier id});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class _$AddPlayerEventCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements $AddPlayerEventCopyWith<$Res> {
  _$AddPlayerEventCopyWithImpl(
      AddPlayerEvent _value, $Res Function(AddPlayerEvent) _then)
      : super(_value, (v) => _then(v as AddPlayerEvent));

  @override
  AddPlayerEvent get _value => super._value as AddPlayerEvent;

  @override
  $Res call({
    Object? player = freezed,
    Object? id = freezed,
  }) {
    return _then(AddPlayerEvent(
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
        (other is AddPlayerEvent &&
            (identical(other.player, player) ||
                const DeepCollectionEquality().equals(other.player, player)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(player) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $AddPlayerEventCopyWith<AddPlayerEvent> get copyWith =>
      _$AddPlayerEventCopyWithImpl<AddPlayerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player, Identifier id) addPlayer,
    required TResult Function(Identifier id) startGame,
    required TResult Function(Piece piece, Player player, Identifier id)
        layPiece,
  }) {
    return addPlayer(player, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(Piece piece, Player player, Identifier id)? layPiece,
  }) {
    return addPlayer?.call(player, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(Piece piece, Player player, Identifier id)? layPiece,
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
    required TResult Function(LayPieceGameEvent value) layPiece,
  }) {
    return addPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(LayPieceGameEvent value)? layPiece,
  }) {
    return addPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(LayPieceGameEvent value)? layPiece,
    required TResult orElse(),
  }) {
    if (addPlayer != null) {
      return addPlayer(this);
    }
    return orElse();
  }
}

abstract class AddPlayerEvent extends GameEvent {
  const factory AddPlayerEvent(Player player, {required Identifier id}) =
      _$AddPlayerEvent;
  const AddPlayerEvent._() : super._();

  Player get player => throw _privateConstructorUsedError;
  @override
  Identifier get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AddPlayerEventCopyWith<AddPlayerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartGameEventCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory $StartGameEventCopyWith(
          StartGameEvent value, $Res Function(StartGameEvent) then) =
      _$StartGameEventCopyWithImpl<$Res>;
  @override
  $Res call({Identifier id});
}

/// @nodoc
class _$StartGameEventCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements $StartGameEventCopyWith<$Res> {
  _$StartGameEventCopyWithImpl(
      StartGameEvent _value, $Res Function(StartGameEvent) _then)
      : super(_value, (v) => _then(v as StartGameEvent));

  @override
  StartGameEvent get _value => super._value as StartGameEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(StartGameEvent(
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
        (other is StartGameEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $StartGameEventCopyWith<StartGameEvent> get copyWith =>
      _$StartGameEventCopyWithImpl<StartGameEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player, Identifier id) addPlayer,
    required TResult Function(Identifier id) startGame,
    required TResult Function(Piece piece, Player player, Identifier id)
        layPiece,
  }) {
    return startGame(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(Piece piece, Player player, Identifier id)? layPiece,
  }) {
    return startGame?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(Piece piece, Player player, Identifier id)? layPiece,
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
    required TResult Function(LayPieceGameEvent value) layPiece,
  }) {
    return startGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(LayPieceGameEvent value)? layPiece,
  }) {
    return startGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(LayPieceGameEvent value)? layPiece,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(this);
    }
    return orElse();
  }
}

abstract class StartGameEvent extends GameEvent {
  const factory StartGameEvent({required Identifier id}) = _$StartGameEvent;
  const StartGameEvent._() : super._();

  @override
  Identifier get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StartGameEventCopyWith<StartGameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayPieceGameEventCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory $LayPieceGameEventCopyWith(
          LayPieceGameEvent value, $Res Function(LayPieceGameEvent) then) =
      _$LayPieceGameEventCopyWithImpl<$Res>;
  @override
  $Res call({Piece piece, Player player, Identifier id});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class _$LayPieceGameEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res>
    implements $LayPieceGameEventCopyWith<$Res> {
  _$LayPieceGameEventCopyWithImpl(
      LayPieceGameEvent _value, $Res Function(LayPieceGameEvent) _then)
      : super(_value, (v) => _then(v as LayPieceGameEvent));

  @override
  LayPieceGameEvent get _value => super._value as LayPieceGameEvent;

  @override
  $Res call({
    Object? piece = freezed,
    Object? player = freezed,
    Object? id = freezed,
  }) {
    return _then(LayPieceGameEvent(
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

class _$LayPieceGameEvent extends LayPieceGameEvent {
  const _$LayPieceGameEvent(this.piece,
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
    return 'GameEvent.layPiece(piece: $piece, player: $player, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LayPieceGameEvent &&
            (identical(other.piece, piece) ||
                const DeepCollectionEquality().equals(other.piece, piece)) &&
            (identical(other.player, player) ||
                const DeepCollectionEquality().equals(other.player, player)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(piece) ^
      const DeepCollectionEquality().hash(player) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $LayPieceGameEventCopyWith<LayPieceGameEvent> get copyWith =>
      _$LayPieceGameEventCopyWithImpl<LayPieceGameEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player, Identifier id) addPlayer,
    required TResult Function(Identifier id) startGame,
    required TResult Function(Piece piece, Player player, Identifier id)
        layPiece,
  }) {
    return layPiece(piece, player, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(Piece piece, Player player, Identifier id)? layPiece,
  }) {
    return layPiece?.call(piece, player, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    TResult Function(Identifier id)? startGame,
    TResult Function(Piece piece, Player player, Identifier id)? layPiece,
    required TResult orElse(),
  }) {
    if (layPiece != null) {
      return layPiece(piece, player, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPlayerEvent value) addPlayer,
    required TResult Function(StartGameEvent value) startGame,
    required TResult Function(LayPieceGameEvent value) layPiece,
  }) {
    return layPiece(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(LayPieceGameEvent value)? layPiece,
  }) {
    return layPiece?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
    TResult Function(StartGameEvent value)? startGame,
    TResult Function(LayPieceGameEvent value)? layPiece,
    required TResult orElse(),
  }) {
    if (layPiece != null) {
      return layPiece(this);
    }
    return orElse();
  }
}

abstract class LayPieceGameEvent extends GameEvent {
  const factory LayPieceGameEvent(Piece piece,
      {required Player player, required Identifier id}) = _$LayPieceGameEvent;
  const LayPieceGameEvent._() : super._();

  Piece get piece => throw _privateConstructorUsedError;
  Player get player => throw _privateConstructorUsedError;
  @override
  Identifier get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LayPieceGameEventCopyWith<LayPieceGameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
