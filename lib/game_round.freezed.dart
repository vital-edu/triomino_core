// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_round.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameRound {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RoundEvent> events, List<PlayerStatus> statuses)
        onGoing,
    required TResult Function(
            List<RoundEvent> events, List<PlayerStatus> statuses)
        finished,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        onGoing,
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        finished,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        onGoing,
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        finished,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGoingGameRound value) onGoing,
    required TResult Function(FinishedGameRound value) finished,
    required TResult Function(UnknownGameRound value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnGoingGameRound value)? onGoing,
    TResult Function(FinishedGameRound value)? finished,
    TResult Function(UnknownGameRound value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGoingGameRound value)? onGoing,
    TResult Function(FinishedGameRound value)? finished,
    TResult Function(UnknownGameRound value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameRoundCopyWith<$Res> {
  factory $GameRoundCopyWith(GameRound value, $Res Function(GameRound) then) =
      _$GameRoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameRoundCopyWithImpl<$Res> implements $GameRoundCopyWith<$Res> {
  _$GameRoundCopyWithImpl(this._value, this._then);

  final GameRound _value;
  // ignore: unused_field
  final $Res Function(GameRound) _then;
}

/// @nodoc
abstract class _$$OnGoingGameRoundCopyWith<$Res> {
  factory _$$OnGoingGameRoundCopyWith(
          _$OnGoingGameRound value, $Res Function(_$OnGoingGameRound) then) =
      __$$OnGoingGameRoundCopyWithImpl<$Res>;
  $Res call({List<RoundEvent> events, List<PlayerStatus> statuses});
}

/// @nodoc
class __$$OnGoingGameRoundCopyWithImpl<$Res>
    extends _$GameRoundCopyWithImpl<$Res>
    implements _$$OnGoingGameRoundCopyWith<$Res> {
  __$$OnGoingGameRoundCopyWithImpl(
      _$OnGoingGameRound _value, $Res Function(_$OnGoingGameRound) _then)
      : super(_value, (v) => _then(v as _$OnGoingGameRound));

  @override
  _$OnGoingGameRound get _value => super._value as _$OnGoingGameRound;

  @override
  $Res call({
    Object? events = freezed,
    Object? statuses = freezed,
  }) {
    return _then(_$OnGoingGameRound(
      events: events == freezed
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<RoundEvent>,
      statuses: statuses == freezed
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<PlayerStatus>,
    ));
  }
}

/// @nodoc

class _$OnGoingGameRound extends OnGoingGameRound {
  const _$OnGoingGameRound(
      {required final List<RoundEvent> events,
      required final List<PlayerStatus> statuses})
      : _events = events,
        _statuses = statuses,
        super._();

  final List<RoundEvent> _events;
  @override
  List<RoundEvent> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<PlayerStatus> _statuses;
  @override
  List<PlayerStatus> get statuses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  @override
  String toString() {
    return 'GameRound.onGoing(events: $events, statuses: $statuses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGoingGameRound &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_statuses));

  @JsonKey(ignore: true)
  @override
  _$$OnGoingGameRoundCopyWith<_$OnGoingGameRound> get copyWith =>
      __$$OnGoingGameRoundCopyWithImpl<_$OnGoingGameRound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RoundEvent> events, List<PlayerStatus> statuses)
        onGoing,
    required TResult Function(
            List<RoundEvent> events, List<PlayerStatus> statuses)
        finished,
    required TResult Function() unknown,
  }) {
    return onGoing(events, statuses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        onGoing,
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        finished,
    TResult Function()? unknown,
  }) {
    return onGoing?.call(events, statuses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        onGoing,
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        finished,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (onGoing != null) {
      return onGoing(events, statuses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGoingGameRound value) onGoing,
    required TResult Function(FinishedGameRound value) finished,
    required TResult Function(UnknownGameRound value) unknown,
  }) {
    return onGoing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnGoingGameRound value)? onGoing,
    TResult Function(FinishedGameRound value)? finished,
    TResult Function(UnknownGameRound value)? unknown,
  }) {
    return onGoing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGoingGameRound value)? onGoing,
    TResult Function(FinishedGameRound value)? finished,
    TResult Function(UnknownGameRound value)? unknown,
    required TResult orElse(),
  }) {
    if (onGoing != null) {
      return onGoing(this);
    }
    return orElse();
  }
}

abstract class OnGoingGameRound extends GameRound {
  const factory OnGoingGameRound(
      {required final List<RoundEvent> events,
      required final List<PlayerStatus> statuses}) = _$OnGoingGameRound;
  const OnGoingGameRound._() : super._();

  List<RoundEvent> get events => throw _privateConstructorUsedError;
  List<PlayerStatus> get statuses => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$OnGoingGameRoundCopyWith<_$OnGoingGameRound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedGameRoundCopyWith<$Res> {
  factory _$$FinishedGameRoundCopyWith(
          _$FinishedGameRound value, $Res Function(_$FinishedGameRound) then) =
      __$$FinishedGameRoundCopyWithImpl<$Res>;
  $Res call({List<RoundEvent> events, List<PlayerStatus> statuses});
}

/// @nodoc
class __$$FinishedGameRoundCopyWithImpl<$Res>
    extends _$GameRoundCopyWithImpl<$Res>
    implements _$$FinishedGameRoundCopyWith<$Res> {
  __$$FinishedGameRoundCopyWithImpl(
      _$FinishedGameRound _value, $Res Function(_$FinishedGameRound) _then)
      : super(_value, (v) => _then(v as _$FinishedGameRound));

  @override
  _$FinishedGameRound get _value => super._value as _$FinishedGameRound;

  @override
  $Res call({
    Object? events = freezed,
    Object? statuses = freezed,
  }) {
    return _then(_$FinishedGameRound(
      events: events == freezed
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<RoundEvent>,
      statuses: statuses == freezed
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<PlayerStatus>,
    ));
  }
}

/// @nodoc

class _$FinishedGameRound extends FinishedGameRound {
  const _$FinishedGameRound(
      {required final List<RoundEvent> events,
      required final List<PlayerStatus> statuses})
      : _events = events,
        _statuses = statuses,
        super._();

  final List<RoundEvent> _events;
  @override
  List<RoundEvent> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<PlayerStatus> _statuses;
  @override
  List<PlayerStatus> get statuses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  @override
  String toString() {
    return 'GameRound.finished(events: $events, statuses: $statuses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishedGameRound &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_statuses));

  @JsonKey(ignore: true)
  @override
  _$$FinishedGameRoundCopyWith<_$FinishedGameRound> get copyWith =>
      __$$FinishedGameRoundCopyWithImpl<_$FinishedGameRound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RoundEvent> events, List<PlayerStatus> statuses)
        onGoing,
    required TResult Function(
            List<RoundEvent> events, List<PlayerStatus> statuses)
        finished,
    required TResult Function() unknown,
  }) {
    return finished(events, statuses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        onGoing,
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        finished,
    TResult Function()? unknown,
  }) {
    return finished?.call(events, statuses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        onGoing,
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        finished,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(events, statuses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGoingGameRound value) onGoing,
    required TResult Function(FinishedGameRound value) finished,
    required TResult Function(UnknownGameRound value) unknown,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnGoingGameRound value)? onGoing,
    TResult Function(FinishedGameRound value)? finished,
    TResult Function(UnknownGameRound value)? unknown,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGoingGameRound value)? onGoing,
    TResult Function(FinishedGameRound value)? finished,
    TResult Function(UnknownGameRound value)? unknown,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class FinishedGameRound extends GameRound {
  const factory FinishedGameRound(
      {required final List<RoundEvent> events,
      required final List<PlayerStatus> statuses}) = _$FinishedGameRound;
  const FinishedGameRound._() : super._();

  List<RoundEvent> get events => throw _privateConstructorUsedError;
  List<PlayerStatus> get statuses => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FinishedGameRoundCopyWith<_$FinishedGameRound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownGameRoundCopyWith<$Res> {
  factory _$$UnknownGameRoundCopyWith(
          _$UnknownGameRound value, $Res Function(_$UnknownGameRound) then) =
      __$$UnknownGameRoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownGameRoundCopyWithImpl<$Res>
    extends _$GameRoundCopyWithImpl<$Res>
    implements _$$UnknownGameRoundCopyWith<$Res> {
  __$$UnknownGameRoundCopyWithImpl(
      _$UnknownGameRound _value, $Res Function(_$UnknownGameRound) _then)
      : super(_value, (v) => _then(v as _$UnknownGameRound));

  @override
  _$UnknownGameRound get _value => super._value as _$UnknownGameRound;
}

/// @nodoc

class _$UnknownGameRound extends UnknownGameRound {
  const _$UnknownGameRound() : super._();

  @override
  String toString() {
    return 'GameRound.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownGameRound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RoundEvent> events, List<PlayerStatus> statuses)
        onGoing,
    required TResult Function(
            List<RoundEvent> events, List<PlayerStatus> statuses)
        finished,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        onGoing,
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        finished,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        onGoing,
    TResult Function(List<RoundEvent> events, List<PlayerStatus> statuses)?
        finished,
    TResult Function()? unknown,
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
    required TResult Function(OnGoingGameRound value) onGoing,
    required TResult Function(FinishedGameRound value) finished,
    required TResult Function(UnknownGameRound value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnGoingGameRound value)? onGoing,
    TResult Function(FinishedGameRound value)? finished,
    TResult Function(UnknownGameRound value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGoingGameRound value)? onGoing,
    TResult Function(FinishedGameRound value)? finished,
    TResult Function(UnknownGameRound value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownGameRound extends GameRound {
  const factory UnknownGameRound() = _$UnknownGameRound;
  const UnknownGameRound._() : super._();
}
