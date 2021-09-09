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
}

/// @nodoc
const $GameEvent = _$GameEventTearOff();

/// @nodoc
mixin _$GameEvent {
  Player get player => throw _privateConstructorUsedError;
  Identifier get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player player, Identifier id) addPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPlayerEvent value) addPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
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
  $Res call({Player player, Identifier id});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res> implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  final GameEvent _value;
  // ignore: unused_field
  final $Res Function(GameEvent) _then;

  @override
  $Res call({
    Object? player = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class $AddPlayerEventCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory $AddPlayerEventCopyWith(
          AddPlayerEvent value, $Res Function(AddPlayerEvent) then) =
      _$AddPlayerEventCopyWithImpl<$Res>;
  @override
  $Res call({Player player, Identifier id});

  @override
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
  }) {
    return addPlayer(player, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
  }) {
    return addPlayer?.call(player, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player player, Identifier id)? addPlayer,
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
  }) {
    return addPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
  }) {
    return addPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlayerEvent value)? addPlayer,
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

  @override
  Player get player => throw _privateConstructorUsedError;
  @override
  Identifier get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AddPlayerEventCopyWith<AddPlayerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
