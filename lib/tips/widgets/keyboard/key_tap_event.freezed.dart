// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'key_tap_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$KeyTapEventTearOff {
  const _$KeyTapEventTearOff();

  _Number number(String value) {
    return _Number(
      value,
    );
  }

  _Clear clear() {
    return const _Clear();
  }

  _Delete delete() {
    return const _Delete();
  }

  _Dot dot() {
    return const _Dot();
  }

  _Submit submit() {
    return const _Submit();
  }
}

/// @nodoc
const $KeyTapEvent = _$KeyTapEventTearOff();

/// @nodoc
mixin _$KeyTapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) number,
    required TResult Function() clear,
    required TResult Function() delete,
    required TResult Function() dot,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? number,
    TResult Function()? clear,
    TResult Function()? delete,
    TResult Function()? dot,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? number,
    TResult Function()? clear,
    TResult Function()? delete,
    TResult Function()? dot,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number value) number,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Dot value) dot,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Number value)? number,
    TResult Function(_Clear value)? clear,
    TResult Function(_Delete value)? delete,
    TResult Function(_Dot value)? dot,
    TResult Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number value)? number,
    TResult Function(_Clear value)? clear,
    TResult Function(_Delete value)? delete,
    TResult Function(_Dot value)? dot,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyTapEventCopyWith<$Res> {
  factory $KeyTapEventCopyWith(
          KeyTapEvent value, $Res Function(KeyTapEvent) then) =
      _$KeyTapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$KeyTapEventCopyWithImpl<$Res> implements $KeyTapEventCopyWith<$Res> {
  _$KeyTapEventCopyWithImpl(this._value, this._then);

  final KeyTapEvent _value;
  // ignore: unused_field
  final $Res Function(KeyTapEvent) _then;
}

/// @nodoc
abstract class _$NumberCopyWith<$Res> {
  factory _$NumberCopyWith(_Number value, $Res Function(_Number) then) =
      __$NumberCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$NumberCopyWithImpl<$Res> extends _$KeyTapEventCopyWithImpl<$Res>
    implements _$NumberCopyWith<$Res> {
  __$NumberCopyWithImpl(_Number _value, $Res Function(_Number) _then)
      : super(_value, (v) => _then(v as _Number));

  @override
  _Number get _value => super._value as _Number;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Number(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Number with DiagnosticableTreeMixin implements _Number {
  const _$_Number(this.value);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KeyTapEvent.number(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'KeyTapEvent.number'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Number &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$NumberCopyWith<_Number> get copyWith =>
      __$NumberCopyWithImpl<_Number>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) number,
    required TResult Function() clear,
    required TResult Function() delete,
    required TResult Function() dot,
    required TResult Function() submit,
  }) {
    return number(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? number,
    TResult Function()? clear,
    TResult Function()? delete,
    TResult Function()? dot,
    TResult Function()? submit,
  }) {
    return number?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? number,
    TResult Function()? clear,
    TResult Function()? delete,
    TResult Function()? dot,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number value) number,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Dot value) dot,
    required TResult Function(_Submit value) submit,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Number value)? number,
    TResult Function(_Clear value)? clear,
    TResult Function(_Delete value)? delete,
    TResult Function(_Dot value)? dot,
    TResult Function(_Submit value)? submit,
  }) {
    return number?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number value)? number,
    TResult Function(_Clear value)? clear,
    TResult Function(_Delete value)? delete,
    TResult Function(_Dot value)? dot,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this);
    }
    return orElse();
  }
}

abstract class _Number implements KeyTapEvent {
  const factory _Number(String value) = _$_Number;

  String get value;
  @JsonKey(ignore: true)
  _$NumberCopyWith<_Number> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearCopyWith<$Res> {
  factory _$ClearCopyWith(_Clear value, $Res Function(_Clear) then) =
      __$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearCopyWithImpl<$Res> extends _$KeyTapEventCopyWithImpl<$Res>
    implements _$ClearCopyWith<$Res> {
  __$ClearCopyWithImpl(_Clear _value, $Res Function(_Clear) _then)
      : super(_value, (v) => _then(v as _Clear));

  @override
  _Clear get _value => super._value as _Clear;
}

/// @nodoc

class _$_Clear with DiagnosticableTreeMixin implements _Clear {
  const _$_Clear();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KeyTapEvent.clear()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'KeyTapEvent.clear'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) number,
    required TResult Function() clear,
    required TResult Function() delete,
    required TResult Function() dot,
    required TResult Function() submit,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? number,
    TResult Function()? clear,
    TResult Function()? delete,
    TResult Function()? dot,
    TResult Function()? submit,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? number,
    TResult Function()? clear,
    TResult Function()? delete,
    TResult Function()? dot,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number value) number,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Dot value) dot,
    required TResult Function(_Submit value) submit,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Number value)? number,
    TResult Function(_Clear value)? clear,
    TResult Function(_Delete value)? delete,
    TResult Function(_Dot value)? dot,
    TResult Function(_Submit value)? submit,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number value)? number,
    TResult Function(_Clear value)? clear,
    TResult Function(_Delete value)? delete,
    TResult Function(_Dot value)? dot,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements KeyTapEvent {
  const factory _Clear() = _$_Clear;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res> extends _$KeyTapEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;
}

/// @nodoc

class _$_Delete with DiagnosticableTreeMixin implements _Delete {
  const _$_Delete();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KeyTapEvent.delete()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'KeyTapEvent.delete'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Delete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) number,
    required TResult Function() clear,
    required TResult Function() delete,
    required TResult Function() dot,
    required TResult Function() submit,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? number,
    TResult Function()? clear,
    TResult Function()? delete,
    TResult Function()? dot,
    TResult Function()? submit,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? number,
    TResult Function()? clear,
    TResult Function()? delete,
    TResult Function()? dot,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number value) number,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Dot value) dot,
    required TResult Function(_Submit value) submit,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Number value)? number,
    TResult Function(_Clear value)? clear,
    TResult Function(_Delete value)? delete,
    TResult Function(_Dot value)? dot,
    TResult Function(_Submit value)? submit,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number value)? number,
    TResult Function(_Clear value)? clear,
    TResult Function(_Delete value)? delete,
    TResult Function(_Dot value)? dot,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements KeyTapEvent {
  const factory _Delete() = _$_Delete;
}

/// @nodoc
abstract class _$DotCopyWith<$Res> {
  factory _$DotCopyWith(_Dot value, $Res Function(_Dot) then) =
      __$DotCopyWithImpl<$Res>;
}

/// @nodoc
class __$DotCopyWithImpl<$Res> extends _$KeyTapEventCopyWithImpl<$Res>
    implements _$DotCopyWith<$Res> {
  __$DotCopyWithImpl(_Dot _value, $Res Function(_Dot) _then)
      : super(_value, (v) => _then(v as _Dot));

  @override
  _Dot get _value => super._value as _Dot;
}

/// @nodoc

class _$_Dot with DiagnosticableTreeMixin implements _Dot {
  const _$_Dot();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KeyTapEvent.dot()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'KeyTapEvent.dot'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Dot);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) number,
    required TResult Function() clear,
    required TResult Function() delete,
    required TResult Function() dot,
    required TResult Function() submit,
  }) {
    return dot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? number,
    TResult Function()? clear,
    TResult Function()? delete,
    TResult Function()? dot,
    TResult Function()? submit,
  }) {
    return dot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? number,
    TResult Function()? clear,
    TResult Function()? delete,
    TResult Function()? dot,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (dot != null) {
      return dot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number value) number,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Dot value) dot,
    required TResult Function(_Submit value) submit,
  }) {
    return dot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Number value)? number,
    TResult Function(_Clear value)? clear,
    TResult Function(_Delete value)? delete,
    TResult Function(_Dot value)? dot,
    TResult Function(_Submit value)? submit,
  }) {
    return dot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number value)? number,
    TResult Function(_Clear value)? clear,
    TResult Function(_Delete value)? delete,
    TResult Function(_Dot value)? dot,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (dot != null) {
      return dot(this);
    }
    return orElse();
  }
}

abstract class _Dot implements KeyTapEvent {
  const factory _Dot() = _$_Dot;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$KeyTapEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;
}

/// @nodoc

class _$_Submit with DiagnosticableTreeMixin implements _Submit {
  const _$_Submit();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KeyTapEvent.submit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'KeyTapEvent.submit'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) number,
    required TResult Function() clear,
    required TResult Function() delete,
    required TResult Function() dot,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? number,
    TResult Function()? clear,
    TResult Function()? delete,
    TResult Function()? dot,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? number,
    TResult Function()? clear,
    TResult Function()? delete,
    TResult Function()? dot,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number value) number,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Dot value) dot,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Number value)? number,
    TResult Function(_Clear value)? clear,
    TResult Function(_Delete value)? delete,
    TResult Function(_Dot value)? dot,
    TResult Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number value)? number,
    TResult Function(_Clear value)? clear,
    TResult Function(_Delete value)? delete,
    TResult Function(_Dot value)? dot,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements KeyTapEvent {
  const factory _Submit() = _$_Submit;
}
