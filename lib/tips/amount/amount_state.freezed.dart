// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'amount_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AmountStateTearOff {
  const _$AmountStateTearOff();

  _AmountState call(String amount) {
    return _AmountState(
      amount,
    );
  }
}

/// @nodoc
const $AmountState = _$AmountStateTearOff();

/// @nodoc
mixin _$AmountState {
  String get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AmountStateCopyWith<AmountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountStateCopyWith<$Res> {
  factory $AmountStateCopyWith(
          AmountState value, $Res Function(AmountState) then) =
      _$AmountStateCopyWithImpl<$Res>;
  $Res call({String amount});
}

/// @nodoc
class _$AmountStateCopyWithImpl<$Res> implements $AmountStateCopyWith<$Res> {
  _$AmountStateCopyWithImpl(this._value, this._then);

  final AmountState _value;
  // ignore: unused_field
  final $Res Function(AmountState) _then;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AmountStateCopyWith<$Res>
    implements $AmountStateCopyWith<$Res> {
  factory _$AmountStateCopyWith(
          _AmountState value, $Res Function(_AmountState) then) =
      __$AmountStateCopyWithImpl<$Res>;
  @override
  $Res call({String amount});
}

/// @nodoc
class __$AmountStateCopyWithImpl<$Res> extends _$AmountStateCopyWithImpl<$Res>
    implements _$AmountStateCopyWith<$Res> {
  __$AmountStateCopyWithImpl(
      _AmountState _value, $Res Function(_AmountState) _then)
      : super(_value, (v) => _then(v as _AmountState));

  @override
  _AmountState get _value => super._value as _AmountState;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_AmountState(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AmountState implements _AmountState {
  const _$_AmountState(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'AmountState(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AmountState &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$AmountStateCopyWith<_AmountState> get copyWith =>
      __$AmountStateCopyWithImpl<_AmountState>(this, _$identity);
}

abstract class _AmountState implements AmountState {
  const factory _AmountState(String amount) = _$_AmountState;

  @override
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$AmountStateCopyWith<_AmountState> get copyWith =>
      throw _privateConstructorUsedError;
}
