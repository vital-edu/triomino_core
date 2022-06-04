// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bonus_game_rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BonusGameRule {
  int get bridgeBonus => throw _privateConstructorUsedError;
  int get hexagonBonus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BonusGameRuleCopyWith<BonusGameRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BonusGameRuleCopyWith<$Res> {
  factory $BonusGameRuleCopyWith(
          BonusGameRule value, $Res Function(BonusGameRule) then) =
      _$BonusGameRuleCopyWithImpl<$Res>;
  $Res call({int bridgeBonus, int hexagonBonus});
}

/// @nodoc
class _$BonusGameRuleCopyWithImpl<$Res>
    implements $BonusGameRuleCopyWith<$Res> {
  _$BonusGameRuleCopyWithImpl(this._value, this._then);

  final BonusGameRule _value;
  // ignore: unused_field
  final $Res Function(BonusGameRule) _then;

  @override
  $Res call({
    Object? bridgeBonus = freezed,
    Object? hexagonBonus = freezed,
  }) {
    return _then(_value.copyWith(
      bridgeBonus: bridgeBonus == freezed
          ? _value.bridgeBonus
          : bridgeBonus // ignore: cast_nullable_to_non_nullable
              as int,
      hexagonBonus: hexagonBonus == freezed
          ? _value.hexagonBonus
          : hexagonBonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_BonusGameRuleCopyWith<$Res>
    implements $BonusGameRuleCopyWith<$Res> {
  factory _$$_BonusGameRuleCopyWith(
          _$_BonusGameRule value, $Res Function(_$_BonusGameRule) then) =
      __$$_BonusGameRuleCopyWithImpl<$Res>;
  @override
  $Res call({int bridgeBonus, int hexagonBonus});
}

/// @nodoc
class __$$_BonusGameRuleCopyWithImpl<$Res>
    extends _$BonusGameRuleCopyWithImpl<$Res>
    implements _$$_BonusGameRuleCopyWith<$Res> {
  __$$_BonusGameRuleCopyWithImpl(
      _$_BonusGameRule _value, $Res Function(_$_BonusGameRule) _then)
      : super(_value, (v) => _then(v as _$_BonusGameRule));

  @override
  _$_BonusGameRule get _value => super._value as _$_BonusGameRule;

  @override
  $Res call({
    Object? bridgeBonus = freezed,
    Object? hexagonBonus = freezed,
  }) {
    return _then(_$_BonusGameRule(
      bridgeBonus: bridgeBonus == freezed
          ? _value.bridgeBonus
          : bridgeBonus // ignore: cast_nullable_to_non_nullable
              as int,
      hexagonBonus: hexagonBonus == freezed
          ? _value.hexagonBonus
          : hexagonBonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BonusGameRule extends _BonusGameRule {
  const _$_BonusGameRule(
      {required this.bridgeBonus, required this.hexagonBonus})
      : super._();

  @override
  final int bridgeBonus;
  @override
  final int hexagonBonus;

  @override
  String toString() {
    return 'BonusGameRule(bridgeBonus: $bridgeBonus, hexagonBonus: $hexagonBonus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BonusGameRule &&
            const DeepCollectionEquality()
                .equals(other.bridgeBonus, bridgeBonus) &&
            const DeepCollectionEquality()
                .equals(other.hexagonBonus, hexagonBonus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bridgeBonus),
      const DeepCollectionEquality().hash(hexagonBonus));

  @JsonKey(ignore: true)
  @override
  _$$_BonusGameRuleCopyWith<_$_BonusGameRule> get copyWith =>
      __$$_BonusGameRuleCopyWithImpl<_$_BonusGameRule>(this, _$identity);
}

abstract class _BonusGameRule extends BonusGameRule implements GameRule {
  const factory _BonusGameRule(
      {required final int bridgeBonus,
      required final int hexagonBonus}) = _$_BonusGameRule;
  const _BonusGameRule._() : super._();

  @override
  int get bridgeBonus => throw _privateConstructorUsedError;
  @override
  int get hexagonBonus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BonusGameRuleCopyWith<_$_BonusGameRule> get copyWith =>
      throw _privateConstructorUsedError;
}
