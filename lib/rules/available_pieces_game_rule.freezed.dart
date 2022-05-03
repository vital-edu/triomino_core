// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'available_pieces_game_rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AvailablePiecesGameRuleTearOff {
  const _$AvailablePiecesGameRuleTearOff();

  _AvailablePiecesGameRule call(
      QuantityOfPlayersGameRule quantityOfPlayersRule) {
    return _AvailablePiecesGameRule(
      quantityOfPlayersRule,
    );
  }
}

/// @nodoc
const $AvailablePiecesGameRule = _$AvailablePiecesGameRuleTearOff();

/// @nodoc
mixin _$AvailablePiecesGameRule {
  QuantityOfPlayersGameRule get quantityOfPlayersRule =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AvailablePiecesGameRuleCopyWith<AvailablePiecesGameRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailablePiecesGameRuleCopyWith<$Res> {
  factory $AvailablePiecesGameRuleCopyWith(AvailablePiecesGameRule value,
          $Res Function(AvailablePiecesGameRule) then) =
      _$AvailablePiecesGameRuleCopyWithImpl<$Res>;
  $Res call({QuantityOfPlayersGameRule quantityOfPlayersRule});

  $QuantityOfPlayersGameRuleCopyWith<$Res> get quantityOfPlayersRule;
}

/// @nodoc
class _$AvailablePiecesGameRuleCopyWithImpl<$Res>
    implements $AvailablePiecesGameRuleCopyWith<$Res> {
  _$AvailablePiecesGameRuleCopyWithImpl(this._value, this._then);

  final AvailablePiecesGameRule _value;
  // ignore: unused_field
  final $Res Function(AvailablePiecesGameRule) _then;

  @override
  $Res call({
    Object? quantityOfPlayersRule = freezed,
  }) {
    return _then(_value.copyWith(
      quantityOfPlayersRule: quantityOfPlayersRule == freezed
          ? _value.quantityOfPlayersRule
          : quantityOfPlayersRule // ignore: cast_nullable_to_non_nullable
              as QuantityOfPlayersGameRule,
    ));
  }

  @override
  $QuantityOfPlayersGameRuleCopyWith<$Res> get quantityOfPlayersRule {
    return $QuantityOfPlayersGameRuleCopyWith<$Res>(
        _value.quantityOfPlayersRule, (value) {
      return _then(_value.copyWith(quantityOfPlayersRule: value));
    });
  }
}

/// @nodoc
abstract class _$AvailablePiecesGameRuleCopyWith<$Res>
    implements $AvailablePiecesGameRuleCopyWith<$Res> {
  factory _$AvailablePiecesGameRuleCopyWith(_AvailablePiecesGameRule value,
          $Res Function(_AvailablePiecesGameRule) then) =
      __$AvailablePiecesGameRuleCopyWithImpl<$Res>;
  @override
  $Res call({QuantityOfPlayersGameRule quantityOfPlayersRule});

  @override
  $QuantityOfPlayersGameRuleCopyWith<$Res> get quantityOfPlayersRule;
}

/// @nodoc
class __$AvailablePiecesGameRuleCopyWithImpl<$Res>
    extends _$AvailablePiecesGameRuleCopyWithImpl<$Res>
    implements _$AvailablePiecesGameRuleCopyWith<$Res> {
  __$AvailablePiecesGameRuleCopyWithImpl(_AvailablePiecesGameRule _value,
      $Res Function(_AvailablePiecesGameRule) _then)
      : super(_value, (v) => _then(v as _AvailablePiecesGameRule));

  @override
  _AvailablePiecesGameRule get _value =>
      super._value as _AvailablePiecesGameRule;

  @override
  $Res call({
    Object? quantityOfPlayersRule = freezed,
  }) {
    return _then(_AvailablePiecesGameRule(
      quantityOfPlayersRule == freezed
          ? _value.quantityOfPlayersRule
          : quantityOfPlayersRule // ignore: cast_nullable_to_non_nullable
              as QuantityOfPlayersGameRule,
    ));
  }
}

/// @nodoc

@Implements(GameRule)
class _$_AvailablePiecesGameRule implements _AvailablePiecesGameRule {
  const _$_AvailablePiecesGameRule(this.quantityOfPlayersRule);

  @override
  final QuantityOfPlayersGameRule quantityOfPlayersRule;

  @override
  String toString() {
    return 'AvailablePiecesGameRule(quantityOfPlayersRule: $quantityOfPlayersRule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailablePiecesGameRule &&
            (identical(other.quantityOfPlayersRule, quantityOfPlayersRule) ||
                const DeepCollectionEquality().equals(
                    other.quantityOfPlayersRule, quantityOfPlayersRule)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quantityOfPlayersRule);

  @JsonKey(ignore: true)
  @override
  _$AvailablePiecesGameRuleCopyWith<_AvailablePiecesGameRule> get copyWith =>
      __$AvailablePiecesGameRuleCopyWithImpl<_AvailablePiecesGameRule>(
          this, _$identity);
}

abstract class _AvailablePiecesGameRule
    implements AvailablePiecesGameRule, GameRule {
  const factory _AvailablePiecesGameRule(
          QuantityOfPlayersGameRule quantityOfPlayersRule) =
      _$_AvailablePiecesGameRule;

  @override
  QuantityOfPlayersGameRule get quantityOfPlayersRule =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AvailablePiecesGameRuleCopyWith<_AvailablePiecesGameRule> get copyWith =>
      throw _privateConstructorUsedError;
}
