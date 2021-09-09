// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quantity_of_players_rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuantityOfPlayersGameRuleTearOff {
  const _$QuantityOfPlayersGameRuleTearOff();

  _QuantityOfPlayersGameRule call(int min, int max) {
    return _QuantityOfPlayersGameRule(
      min,
      max,
    );
  }
}

/// @nodoc
const $QuantityOfPlayersGameRule = _$QuantityOfPlayersGameRuleTearOff();

/// @nodoc
mixin _$QuantityOfPlayersGameRule {
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuantityOfPlayersGameRuleCopyWith<QuantityOfPlayersGameRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantityOfPlayersGameRuleCopyWith<$Res> {
  factory $QuantityOfPlayersGameRuleCopyWith(QuantityOfPlayersGameRule value,
          $Res Function(QuantityOfPlayersGameRule) then) =
      _$QuantityOfPlayersGameRuleCopyWithImpl<$Res>;
  $Res call({int min, int max});
}

/// @nodoc
class _$QuantityOfPlayersGameRuleCopyWithImpl<$Res>
    implements $QuantityOfPlayersGameRuleCopyWith<$Res> {
  _$QuantityOfPlayersGameRuleCopyWithImpl(this._value, this._then);

  final QuantityOfPlayersGameRule _value;
  // ignore: unused_field
  final $Res Function(QuantityOfPlayersGameRule) _then;

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
abstract class _$QuantityOfPlayersGameRuleCopyWith<$Res>
    implements $QuantityOfPlayersGameRuleCopyWith<$Res> {
  factory _$QuantityOfPlayersGameRuleCopyWith(_QuantityOfPlayersGameRule value,
          $Res Function(_QuantityOfPlayersGameRule) then) =
      __$QuantityOfPlayersGameRuleCopyWithImpl<$Res>;
  @override
  $Res call({int min, int max});
}

/// @nodoc
class __$QuantityOfPlayersGameRuleCopyWithImpl<$Res>
    extends _$QuantityOfPlayersGameRuleCopyWithImpl<$Res>
    implements _$QuantityOfPlayersGameRuleCopyWith<$Res> {
  __$QuantityOfPlayersGameRuleCopyWithImpl(_QuantityOfPlayersGameRule _value,
      $Res Function(_QuantityOfPlayersGameRule) _then)
      : super(_value, (v) => _then(v as _QuantityOfPlayersGameRule));

  @override
  _QuantityOfPlayersGameRule get _value =>
      super._value as _QuantityOfPlayersGameRule;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_QuantityOfPlayersGameRule(
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

class _$_QuantityOfPlayersGameRule implements _QuantityOfPlayersGameRule {
  const _$_QuantityOfPlayersGameRule(this.min, this.max)
      : assert(max >= min, 'max players must be greater than min players.'),
        assert(min > 1, 'it is not allowed a game of only one person.');

  @override
  final int min;
  @override
  final int max;

  @override
  String toString() {
    return 'QuantityOfPlayersGameRule(min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuantityOfPlayersGameRule &&
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
  _$QuantityOfPlayersGameRuleCopyWith<_QuantityOfPlayersGameRule>
      get copyWith =>
          __$QuantityOfPlayersGameRuleCopyWithImpl<_QuantityOfPlayersGameRule>(
              this, _$identity);
}

abstract class _QuantityOfPlayersGameRule implements QuantityOfPlayersGameRule {
  const factory _QuantityOfPlayersGameRule(int min, int max) =
      _$_QuantityOfPlayersGameRule;

  @override
  int get min => throw _privateConstructorUsedError;
  @override
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuantityOfPlayersGameRuleCopyWith<_QuantityOfPlayersGameRule>
      get copyWith => throw _privateConstructorUsedError;
}
