// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'async_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AsyncValue<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T value) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncInitial<T> value) initial,
    required TResult Function(AsyncData<T> value) data,
    required TResult Function(AsyncLoading<T> value) loading,
    required TResult Function(AsyncError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AsyncInitial<T> value)? initial,
    TResult Function(AsyncData<T> value)? data,
    TResult Function(AsyncLoading<T> value)? loading,
    TResult Function(AsyncError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncInitial<T> value)? initial,
    TResult Function(AsyncData<T> value)? data,
    TResult Function(AsyncLoading<T> value)? loading,
    TResult Function(AsyncError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncValueCopyWith<T, $Res> {
  factory $AsyncValueCopyWith(
          AsyncValue<T> value, $Res Function(AsyncValue<T>) then) =
      _$AsyncValueCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AsyncValueCopyWithImpl<T, $Res>
    implements $AsyncValueCopyWith<T, $Res> {
  _$AsyncValueCopyWithImpl(this._value, this._then);

  final AsyncValue<T> _value;
  // ignore: unused_field
  final $Res Function(AsyncValue<T>) _then;
}

/// @nodoc
abstract class _$$AsyncInitialCopyWith<T, $Res> {
  factory _$$AsyncInitialCopyWith(
          _$AsyncInitial<T> value, $Res Function(_$AsyncInitial<T>) then) =
      __$$AsyncInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AsyncInitialCopyWithImpl<T, $Res>
    extends _$AsyncValueCopyWithImpl<T, $Res>
    implements _$$AsyncInitialCopyWith<T, $Res> {
  __$$AsyncInitialCopyWithImpl(
      _$AsyncInitial<T> _value, $Res Function(_$AsyncInitial<T>) _then)
      : super(_value, (v) => _then(v as _$AsyncInitial<T>));

  @override
  _$AsyncInitial<T> get _value => super._value as _$AsyncInitial<T>;
}

/// @nodoc

class _$AsyncInitial<T> implements AsyncInitial<T> {
  const _$AsyncInitial();

  @override
  String toString() {
    return 'AsyncValue<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AsyncInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T value) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncInitial<T> value) initial,
    required TResult Function(AsyncData<T> value) data,
    required TResult Function(AsyncLoading<T> value) loading,
    required TResult Function(AsyncError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AsyncInitial<T> value)? initial,
    TResult Function(AsyncData<T> value)? data,
    TResult Function(AsyncLoading<T> value)? loading,
    TResult Function(AsyncError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncInitial<T> value)? initial,
    TResult Function(AsyncData<T> value)? data,
    TResult Function(AsyncLoading<T> value)? loading,
    TResult Function(AsyncError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AsyncInitial<T> implements AsyncValue<T> {
  const factory AsyncInitial() = _$AsyncInitial<T>;
}

/// @nodoc
abstract class _$$AsyncDataCopyWith<T, $Res> {
  factory _$$AsyncDataCopyWith(
          _$AsyncData<T> value, $Res Function(_$AsyncData<T>) then) =
      __$$AsyncDataCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$AsyncDataCopyWithImpl<T, $Res>
    extends _$AsyncValueCopyWithImpl<T, $Res>
    implements _$$AsyncDataCopyWith<T, $Res> {
  __$$AsyncDataCopyWithImpl(
      _$AsyncData<T> _value, $Res Function(_$AsyncData<T>) _then)
      : super(_value, (v) => _then(v as _$AsyncData<T>));

  @override
  _$AsyncData<T> get _value => super._value as _$AsyncData<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$AsyncData<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AsyncData<T> implements AsyncData<T> {
  const _$AsyncData(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'AsyncValue<$T>.data(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncData<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$AsyncDataCopyWith<T, _$AsyncData<T>> get copyWith =>
      __$$AsyncDataCopyWithImpl<T, _$AsyncData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T value) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return data(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return data?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncInitial<T> value) initial,
    required TResult Function(AsyncData<T> value) data,
    required TResult Function(AsyncLoading<T> value) loading,
    required TResult Function(AsyncError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AsyncInitial<T> value)? initial,
    TResult Function(AsyncData<T> value)? data,
    TResult Function(AsyncLoading<T> value)? loading,
    TResult Function(AsyncError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncInitial<T> value)? initial,
    TResult Function(AsyncData<T> value)? data,
    TResult Function(AsyncLoading<T> value)? loading,
    TResult Function(AsyncError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AsyncData<T> implements AsyncValue<T> {
  const factory AsyncData(final T value) = _$AsyncData<T>;

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AsyncDataCopyWith<T, _$AsyncData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncLoadingCopyWith<T, $Res> {
  factory _$$AsyncLoadingCopyWith(
          _$AsyncLoading<T> value, $Res Function(_$AsyncLoading<T>) then) =
      __$$AsyncLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AsyncLoadingCopyWithImpl<T, $Res>
    extends _$AsyncValueCopyWithImpl<T, $Res>
    implements _$$AsyncLoadingCopyWith<T, $Res> {
  __$$AsyncLoadingCopyWithImpl(
      _$AsyncLoading<T> _value, $Res Function(_$AsyncLoading<T>) _then)
      : super(_value, (v) => _then(v as _$AsyncLoading<T>));

  @override
  _$AsyncLoading<T> get _value => super._value as _$AsyncLoading<T>;
}

/// @nodoc

class _$AsyncLoading<T> implements AsyncLoading<T> {
  const _$AsyncLoading();

  @override
  String toString() {
    return 'AsyncValue<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AsyncLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T value) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncInitial<T> value) initial,
    required TResult Function(AsyncData<T> value) data,
    required TResult Function(AsyncLoading<T> value) loading,
    required TResult Function(AsyncError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AsyncInitial<T> value)? initial,
    TResult Function(AsyncData<T> value)? data,
    TResult Function(AsyncLoading<T> value)? loading,
    TResult Function(AsyncError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncInitial<T> value)? initial,
    TResult Function(AsyncData<T> value)? data,
    TResult Function(AsyncLoading<T> value)? loading,
    TResult Function(AsyncError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AsyncLoading<T> implements AsyncValue<T> {
  const factory AsyncLoading() = _$AsyncLoading<T>;
}

/// @nodoc
abstract class _$$AsyncErrorCopyWith<T, $Res> {
  factory _$$AsyncErrorCopyWith(
          _$AsyncError<T> value, $Res Function(_$AsyncError<T>) then) =
      __$$AsyncErrorCopyWithImpl<T, $Res>;
  $Res call({Object error, StackTrace? stackTrace});
}

/// @nodoc
class __$$AsyncErrorCopyWithImpl<T, $Res>
    extends _$AsyncValueCopyWithImpl<T, $Res>
    implements _$$AsyncErrorCopyWith<T, $Res> {
  __$$AsyncErrorCopyWithImpl(
      _$AsyncError<T> _value, $Res Function(_$AsyncError<T>) _then)
      : super(_value, (v) => _then(v as _$AsyncError<T>));

  @override
  _$AsyncError<T> get _value => super._value as _$AsyncError<T>;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$AsyncError<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$AsyncError<T> implements AsyncError<T> {
  const _$AsyncError(this.error, {this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AsyncValue<$T>.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncError<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$AsyncErrorCopyWith<T, _$AsyncError<T>> get copyWith =>
      __$$AsyncErrorCopyWithImpl<T, _$AsyncError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T value) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncInitial<T> value) initial,
    required TResult Function(AsyncData<T> value) data,
    required TResult Function(AsyncLoading<T> value) loading,
    required TResult Function(AsyncError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AsyncInitial<T> value)? initial,
    TResult Function(AsyncData<T> value)? data,
    TResult Function(AsyncLoading<T> value)? loading,
    TResult Function(AsyncError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncInitial<T> value)? initial,
    TResult Function(AsyncData<T> value)? data,
    TResult Function(AsyncLoading<T> value)? loading,
    TResult Function(AsyncError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AsyncError<T> implements AsyncValue<T> {
  const factory AsyncError(final Object error, {final StackTrace? stackTrace}) =
      _$AsyncError<T>;

  Object get error => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AsyncErrorCopyWith<T, _$AsyncError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
