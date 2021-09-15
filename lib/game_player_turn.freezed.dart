// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_player_turn.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GamePlayerTurnTearOff {
  const _$GamePlayerTurnTearOff();

  UnknownGamePlayerTurn unknown() {
    return const UnknownGamePlayerTurn();
  }

  InvalidGamePlayerTurn invalid() {
    return const InvalidGamePlayerTurn();
  }

  DeterminedGamePlayerTurn determined(Player player,
      {required List<Player> playersOnOrder}) {
    return DeterminedGamePlayerTurn(
      player,
      playersOnOrder: playersOnOrder,
    );
  }

  PartiallyDeterminedGamePlayerTurn partiallyDetermined(
      {required List<Player> determinedPlayers,
      required List<Player> undeterminedPlayers}) {
    return PartiallyDeterminedGamePlayerTurn(
      determinedPlayers: determinedPlayers,
      undeterminedPlayers: undeterminedPlayers,
    );
  }
}

/// @nodoc
const $GamePlayerTurn = _$GamePlayerTurnTearOff();

/// @nodoc
mixin _$GamePlayerTurn {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() invalid,
    required TResult Function(Player player, List<Player> playersOnOrder)
        determined,
    required TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)
        partiallyDetermined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? invalid,
    TResult Function(Player player, List<Player> playersOnOrder)? determined,
    TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)?
        partiallyDetermined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? invalid,
    TResult Function(Player player, List<Player> playersOnOrder)? determined,
    TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)?
        partiallyDetermined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownGamePlayerTurn value) unknown,
    required TResult Function(InvalidGamePlayerTurn value) invalid,
    required TResult Function(DeterminedGamePlayerTurn value) determined,
    required TResult Function(PartiallyDeterminedGamePlayerTurn value)
        partiallyDetermined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownGamePlayerTurn value)? unknown,
    TResult Function(InvalidGamePlayerTurn value)? invalid,
    TResult Function(DeterminedGamePlayerTurn value)? determined,
    TResult Function(PartiallyDeterminedGamePlayerTurn value)?
        partiallyDetermined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownGamePlayerTurn value)? unknown,
    TResult Function(InvalidGamePlayerTurn value)? invalid,
    TResult Function(DeterminedGamePlayerTurn value)? determined,
    TResult Function(PartiallyDeterminedGamePlayerTurn value)?
        partiallyDetermined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePlayerTurnCopyWith<$Res> {
  factory $GamePlayerTurnCopyWith(
          GamePlayerTurn value, $Res Function(GamePlayerTurn) then) =
      _$GamePlayerTurnCopyWithImpl<$Res>;
}

/// @nodoc
class _$GamePlayerTurnCopyWithImpl<$Res>
    implements $GamePlayerTurnCopyWith<$Res> {
  _$GamePlayerTurnCopyWithImpl(this._value, this._then);

  final GamePlayerTurn _value;
  // ignore: unused_field
  final $Res Function(GamePlayerTurn) _then;
}

/// @nodoc
abstract class $UnknownGamePlayerTurnCopyWith<$Res> {
  factory $UnknownGamePlayerTurnCopyWith(UnknownGamePlayerTurn value,
          $Res Function(UnknownGamePlayerTurn) then) =
      _$UnknownGamePlayerTurnCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknownGamePlayerTurnCopyWithImpl<$Res>
    extends _$GamePlayerTurnCopyWithImpl<$Res>
    implements $UnknownGamePlayerTurnCopyWith<$Res> {
  _$UnknownGamePlayerTurnCopyWithImpl(
      UnknownGamePlayerTurn _value, $Res Function(UnknownGamePlayerTurn) _then)
      : super(_value, (v) => _then(v as UnknownGamePlayerTurn));

  @override
  UnknownGamePlayerTurn get _value => super._value as UnknownGamePlayerTurn;
}

/// @nodoc

class _$UnknownGamePlayerTurn extends UnknownGamePlayerTurn {
  const _$UnknownGamePlayerTurn() : super._();

  @override
  String toString() {
    return 'GamePlayerTurn.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknownGamePlayerTurn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() invalid,
    required TResult Function(Player player, List<Player> playersOnOrder)
        determined,
    required TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)
        partiallyDetermined,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? invalid,
    TResult Function(Player player, List<Player> playersOnOrder)? determined,
    TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)?
        partiallyDetermined,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? invalid,
    TResult Function(Player player, List<Player> playersOnOrder)? determined,
    TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)?
        partiallyDetermined,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownGamePlayerTurn value) unknown,
    required TResult Function(InvalidGamePlayerTurn value) invalid,
    required TResult Function(DeterminedGamePlayerTurn value) determined,
    required TResult Function(PartiallyDeterminedGamePlayerTurn value)
        partiallyDetermined,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownGamePlayerTurn value)? unknown,
    TResult Function(InvalidGamePlayerTurn value)? invalid,
    TResult Function(DeterminedGamePlayerTurn value)? determined,
    TResult Function(PartiallyDeterminedGamePlayerTurn value)?
        partiallyDetermined,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownGamePlayerTurn value)? unknown,
    TResult Function(InvalidGamePlayerTurn value)? invalid,
    TResult Function(DeterminedGamePlayerTurn value)? determined,
    TResult Function(PartiallyDeterminedGamePlayerTurn value)?
        partiallyDetermined,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownGamePlayerTurn extends GamePlayerTurn {
  const factory UnknownGamePlayerTurn() = _$UnknownGamePlayerTurn;
  const UnknownGamePlayerTurn._() : super._();
}

/// @nodoc
abstract class $InvalidGamePlayerTurnCopyWith<$Res> {
  factory $InvalidGamePlayerTurnCopyWith(InvalidGamePlayerTurn value,
          $Res Function(InvalidGamePlayerTurn) then) =
      _$InvalidGamePlayerTurnCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidGamePlayerTurnCopyWithImpl<$Res>
    extends _$GamePlayerTurnCopyWithImpl<$Res>
    implements $InvalidGamePlayerTurnCopyWith<$Res> {
  _$InvalidGamePlayerTurnCopyWithImpl(
      InvalidGamePlayerTurn _value, $Res Function(InvalidGamePlayerTurn) _then)
      : super(_value, (v) => _then(v as InvalidGamePlayerTurn));

  @override
  InvalidGamePlayerTurn get _value => super._value as InvalidGamePlayerTurn;
}

/// @nodoc

class _$InvalidGamePlayerTurn extends InvalidGamePlayerTurn {
  const _$InvalidGamePlayerTurn() : super._();

  @override
  String toString() {
    return 'GamePlayerTurn.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidGamePlayerTurn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() invalid,
    required TResult Function(Player player, List<Player> playersOnOrder)
        determined,
    required TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)
        partiallyDetermined,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? invalid,
    TResult Function(Player player, List<Player> playersOnOrder)? determined,
    TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)?
        partiallyDetermined,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? invalid,
    TResult Function(Player player, List<Player> playersOnOrder)? determined,
    TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)?
        partiallyDetermined,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownGamePlayerTurn value) unknown,
    required TResult Function(InvalidGamePlayerTurn value) invalid,
    required TResult Function(DeterminedGamePlayerTurn value) determined,
    required TResult Function(PartiallyDeterminedGamePlayerTurn value)
        partiallyDetermined,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownGamePlayerTurn value)? unknown,
    TResult Function(InvalidGamePlayerTurn value)? invalid,
    TResult Function(DeterminedGamePlayerTurn value)? determined,
    TResult Function(PartiallyDeterminedGamePlayerTurn value)?
        partiallyDetermined,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownGamePlayerTurn value)? unknown,
    TResult Function(InvalidGamePlayerTurn value)? invalid,
    TResult Function(DeterminedGamePlayerTurn value)? determined,
    TResult Function(PartiallyDeterminedGamePlayerTurn value)?
        partiallyDetermined,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class InvalidGamePlayerTurn extends GamePlayerTurn {
  const factory InvalidGamePlayerTurn() = _$InvalidGamePlayerTurn;
  const InvalidGamePlayerTurn._() : super._();
}

/// @nodoc
abstract class $DeterminedGamePlayerTurnCopyWith<$Res> {
  factory $DeterminedGamePlayerTurnCopyWith(DeterminedGamePlayerTurn value,
          $Res Function(DeterminedGamePlayerTurn) then) =
      _$DeterminedGamePlayerTurnCopyWithImpl<$Res>;
  $Res call({Player player, List<Player> playersOnOrder});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class _$DeterminedGamePlayerTurnCopyWithImpl<$Res>
    extends _$GamePlayerTurnCopyWithImpl<$Res>
    implements $DeterminedGamePlayerTurnCopyWith<$Res> {
  _$DeterminedGamePlayerTurnCopyWithImpl(DeterminedGamePlayerTurn _value,
      $Res Function(DeterminedGamePlayerTurn) _then)
      : super(_value, (v) => _then(v as DeterminedGamePlayerTurn));

  @override
  DeterminedGamePlayerTurn get _value =>
      super._value as DeterminedGamePlayerTurn;

  @override
  $Res call({
    Object? player = freezed,
    Object? playersOnOrder = freezed,
  }) {
    return _then(DeterminedGamePlayerTurn(
      player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      playersOnOrder: playersOnOrder == freezed
          ? _value.playersOnOrder
          : playersOnOrder // ignore: cast_nullable_to_non_nullable
              as List<Player>,
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

class _$DeterminedGamePlayerTurn extends DeterminedGamePlayerTurn {
  const _$DeterminedGamePlayerTurn(this.player, {required this.playersOnOrder})
      : super._();

  @override
  final Player player;
  @override
  final List<Player> playersOnOrder;

  @override
  String toString() {
    return 'GamePlayerTurn.determined(player: $player, playersOnOrder: $playersOnOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeterminedGamePlayerTurn &&
            (identical(other.player, player) ||
                const DeepCollectionEquality().equals(other.player, player)) &&
            (identical(other.playersOnOrder, playersOnOrder) ||
                const DeepCollectionEquality()
                    .equals(other.playersOnOrder, playersOnOrder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(player) ^
      const DeepCollectionEquality().hash(playersOnOrder);

  @JsonKey(ignore: true)
  @override
  $DeterminedGamePlayerTurnCopyWith<DeterminedGamePlayerTurn> get copyWith =>
      _$DeterminedGamePlayerTurnCopyWithImpl<DeterminedGamePlayerTurn>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() invalid,
    required TResult Function(Player player, List<Player> playersOnOrder)
        determined,
    required TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)
        partiallyDetermined,
  }) {
    return determined(player, playersOnOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? invalid,
    TResult Function(Player player, List<Player> playersOnOrder)? determined,
    TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)?
        partiallyDetermined,
  }) {
    return determined?.call(player, playersOnOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? invalid,
    TResult Function(Player player, List<Player> playersOnOrder)? determined,
    TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)?
        partiallyDetermined,
    required TResult orElse(),
  }) {
    if (determined != null) {
      return determined(player, playersOnOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownGamePlayerTurn value) unknown,
    required TResult Function(InvalidGamePlayerTurn value) invalid,
    required TResult Function(DeterminedGamePlayerTurn value) determined,
    required TResult Function(PartiallyDeterminedGamePlayerTurn value)
        partiallyDetermined,
  }) {
    return determined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownGamePlayerTurn value)? unknown,
    TResult Function(InvalidGamePlayerTurn value)? invalid,
    TResult Function(DeterminedGamePlayerTurn value)? determined,
    TResult Function(PartiallyDeterminedGamePlayerTurn value)?
        partiallyDetermined,
  }) {
    return determined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownGamePlayerTurn value)? unknown,
    TResult Function(InvalidGamePlayerTurn value)? invalid,
    TResult Function(DeterminedGamePlayerTurn value)? determined,
    TResult Function(PartiallyDeterminedGamePlayerTurn value)?
        partiallyDetermined,
    required TResult orElse(),
  }) {
    if (determined != null) {
      return determined(this);
    }
    return orElse();
  }
}

abstract class DeterminedGamePlayerTurn extends GamePlayerTurn {
  const factory DeterminedGamePlayerTurn(Player player,
      {required List<Player> playersOnOrder}) = _$DeterminedGamePlayerTurn;
  const DeterminedGamePlayerTurn._() : super._();

  Player get player => throw _privateConstructorUsedError;
  List<Player> get playersOnOrder => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeterminedGamePlayerTurnCopyWith<DeterminedGamePlayerTurn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartiallyDeterminedGamePlayerTurnCopyWith<$Res> {
  factory $PartiallyDeterminedGamePlayerTurnCopyWith(
          PartiallyDeterminedGamePlayerTurn value,
          $Res Function(PartiallyDeterminedGamePlayerTurn) then) =
      _$PartiallyDeterminedGamePlayerTurnCopyWithImpl<$Res>;
  $Res call({List<Player> determinedPlayers, List<Player> undeterminedPlayers});
}

/// @nodoc
class _$PartiallyDeterminedGamePlayerTurnCopyWithImpl<$Res>
    extends _$GamePlayerTurnCopyWithImpl<$Res>
    implements $PartiallyDeterminedGamePlayerTurnCopyWith<$Res> {
  _$PartiallyDeterminedGamePlayerTurnCopyWithImpl(
      PartiallyDeterminedGamePlayerTurn _value,
      $Res Function(PartiallyDeterminedGamePlayerTurn) _then)
      : super(_value, (v) => _then(v as PartiallyDeterminedGamePlayerTurn));

  @override
  PartiallyDeterminedGamePlayerTurn get _value =>
      super._value as PartiallyDeterminedGamePlayerTurn;

  @override
  $Res call({
    Object? determinedPlayers = freezed,
    Object? undeterminedPlayers = freezed,
  }) {
    return _then(PartiallyDeterminedGamePlayerTurn(
      determinedPlayers: determinedPlayers == freezed
          ? _value.determinedPlayers
          : determinedPlayers // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      undeterminedPlayers: undeterminedPlayers == freezed
          ? _value.undeterminedPlayers
          : undeterminedPlayers // ignore: cast_nullable_to_non_nullable
              as List<Player>,
    ));
  }
}

/// @nodoc

class _$PartiallyDeterminedGamePlayerTurn
    extends PartiallyDeterminedGamePlayerTurn {
  const _$PartiallyDeterminedGamePlayerTurn(
      {required this.determinedPlayers, required this.undeterminedPlayers})
      : super._();

  @override
  final List<Player> determinedPlayers;
  @override
  final List<Player> undeterminedPlayers;

  @override
  String toString() {
    return 'GamePlayerTurn.partiallyDetermined(determinedPlayers: $determinedPlayers, undeterminedPlayers: $undeterminedPlayers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PartiallyDeterminedGamePlayerTurn &&
            (identical(other.determinedPlayers, determinedPlayers) ||
                const DeepCollectionEquality()
                    .equals(other.determinedPlayers, determinedPlayers)) &&
            (identical(other.undeterminedPlayers, undeterminedPlayers) ||
                const DeepCollectionEquality()
                    .equals(other.undeterminedPlayers, undeterminedPlayers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(determinedPlayers) ^
      const DeepCollectionEquality().hash(undeterminedPlayers);

  @JsonKey(ignore: true)
  @override
  $PartiallyDeterminedGamePlayerTurnCopyWith<PartiallyDeterminedGamePlayerTurn>
      get copyWith => _$PartiallyDeterminedGamePlayerTurnCopyWithImpl<
          PartiallyDeterminedGamePlayerTurn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() invalid,
    required TResult Function(Player player, List<Player> playersOnOrder)
        determined,
    required TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)
        partiallyDetermined,
  }) {
    return partiallyDetermined(determinedPlayers, undeterminedPlayers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? invalid,
    TResult Function(Player player, List<Player> playersOnOrder)? determined,
    TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)?
        partiallyDetermined,
  }) {
    return partiallyDetermined?.call(determinedPlayers, undeterminedPlayers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? invalid,
    TResult Function(Player player, List<Player> playersOnOrder)? determined,
    TResult Function(
            List<Player> determinedPlayers, List<Player> undeterminedPlayers)?
        partiallyDetermined,
    required TResult orElse(),
  }) {
    if (partiallyDetermined != null) {
      return partiallyDetermined(determinedPlayers, undeterminedPlayers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownGamePlayerTurn value) unknown,
    required TResult Function(InvalidGamePlayerTurn value) invalid,
    required TResult Function(DeterminedGamePlayerTurn value) determined,
    required TResult Function(PartiallyDeterminedGamePlayerTurn value)
        partiallyDetermined,
  }) {
    return partiallyDetermined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownGamePlayerTurn value)? unknown,
    TResult Function(InvalidGamePlayerTurn value)? invalid,
    TResult Function(DeterminedGamePlayerTurn value)? determined,
    TResult Function(PartiallyDeterminedGamePlayerTurn value)?
        partiallyDetermined,
  }) {
    return partiallyDetermined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownGamePlayerTurn value)? unknown,
    TResult Function(InvalidGamePlayerTurn value)? invalid,
    TResult Function(DeterminedGamePlayerTurn value)? determined,
    TResult Function(PartiallyDeterminedGamePlayerTurn value)?
        partiallyDetermined,
    required TResult orElse(),
  }) {
    if (partiallyDetermined != null) {
      return partiallyDetermined(this);
    }
    return orElse();
  }
}

abstract class PartiallyDeterminedGamePlayerTurn extends GamePlayerTurn {
  const factory PartiallyDeterminedGamePlayerTurn(
          {required List<Player> determinedPlayers,
          required List<Player> undeterminedPlayers}) =
      _$PartiallyDeterminedGamePlayerTurn;
  const PartiallyDeterminedGamePlayerTurn._() : super._();

  List<Player> get determinedPlayers => throw _privateConstructorUsedError;
  List<Player> get undeterminedPlayers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartiallyDeterminedGamePlayerTurnCopyWith<PartiallyDeterminedGamePlayerTurn>
      get copyWith => throw _privateConstructorUsedError;
}
