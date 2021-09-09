// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameRuleTearOff {
  const _$GameRuleTearOff();

  QuantityOfPlayersGameRule quantityOfPlayers(int min, int max) {
    return QuantityOfPlayersGameRule(
      min,
      max,
    );
  }
}

/// @nodoc
const $GameRule = _$GameRuleTearOff();

/// @nodoc
mixin _$GameRule {
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int min, int max) quantityOfPlayers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int min, int max)? quantityOfPlayers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int min, int max)? quantityOfPlayers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuantityOfPlayersGameRule value)
        quantityOfPlayers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuantityOfPlayersGameRule value)? quantityOfPlayers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuantityOfPlayersGameRule value)? quantityOfPlayers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameRuleCopyWith<GameRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameRuleCopyWith<$Res> {
  factory $GameRuleCopyWith(GameRule value, $Res Function(GameRule) then) =
      _$GameRuleCopyWithImpl<$Res>;
  $Res call({int min, int max});
}

/// @nodoc
class _$GameRuleCopyWithImpl<$Res> implements $GameRuleCopyWith<$Res> {
  _$GameRuleCopyWithImpl(this._value, this._then);

  final GameRule _value;
  // ignore: unused_field
  final $Res Function(GameRule) _then;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $QuantityOfPlayersGameRuleCopyWith<$Res>
    implements $GameRuleCopyWith<$Res> {
  factory $QuantityOfPlayersGameRuleCopyWith(QuantityOfPlayersGameRule value,
          $Res Function(QuantityOfPlayersGameRule) then) =
      _$QuantityOfPlayersGameRuleCopyWithImpl<$Res>;
  @override
  $Res call({int min, int max});
}

/// @nodoc
class _$QuantityOfPlayersGameRuleCopyWithImpl<$Res>
    extends _$GameRuleCopyWithImpl<$Res>
    implements $QuantityOfPlayersGameRuleCopyWith<$Res> {
  _$QuantityOfPlayersGameRuleCopyWithImpl(QuantityOfPlayersGameRule _value,
      $Res Function(QuantityOfPlayersGameRule) _then)
      : super(_value, (v) => _then(v as QuantityOfPlayersGameRule));

  @override
  QuantityOfPlayersGameRule get _value =>
      super._value as QuantityOfPlayersGameRule;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(QuantityOfPlayersGameRule(
      min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuantityOfPlayersGameRule extends QuantityOfPlayersGameRule {
  const _$QuantityOfPlayersGameRule(this.min, this.max)
      : assert(max >= min, 'max players must be greater than min players.'),
        assert(min > 1, 'it is not allowed a game of only one person.'),
        super._();

  @override
  final int min;
  @override
  final int max;

  @override
  String toString() {
    return 'GameRule.quantityOfPlayers(min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuantityOfPlayersGameRule &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $QuantityOfPlayersGameRuleCopyWith<QuantityOfPlayersGameRule> get copyWith =>
      _$QuantityOfPlayersGameRuleCopyWithImpl<QuantityOfPlayersGameRule>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int min, int max) quantityOfPlayers,
  }) {
    return quantityOfPlayers(min, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int min, int max)? quantityOfPlayers,
  }) {
    return quantityOfPlayers?.call(min, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int min, int max)? quantityOfPlayers,
    required TResult orElse(),
  }) {
    if (quantityOfPlayers != null) {
      return quantityOfPlayers(min, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuantityOfPlayersGameRule value)
        quantityOfPlayers,
  }) {
    return quantityOfPlayers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuantityOfPlayersGameRule value)? quantityOfPlayers,
  }) {
    return quantityOfPlayers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuantityOfPlayersGameRule value)? quantityOfPlayers,
    required TResult orElse(),
  }) {
    if (quantityOfPlayers != null) {
      return quantityOfPlayers(this);
    }
    return orElse();
  }
}

abstract class QuantityOfPlayersGameRule extends GameRule {
  const factory QuantityOfPlayersGameRule(int min, int max) =
      _$QuantityOfPlayersGameRule;
  const QuantityOfPlayersGameRule._() : super._();

  @override
  int get min => throw _privateConstructorUsedError;
  @override
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $QuantityOfPlayersGameRuleCopyWith<QuantityOfPlayersGameRule> get copyWith =>
      throw _privateConstructorUsedError;
}
