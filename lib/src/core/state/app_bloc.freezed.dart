// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeApp,
    required TResult Function(ThemeMode themeMode) changeThemeMode,
    required TResult Function() toggleThemeMode,
    required TResult Function(String homeAssistantUrl) updateHomeAssistantUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializeApp,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    TResult Function()? toggleThemeMode,
    TResult Function(String homeAssistantUrl)? updateHomeAssistantUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeApp,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    TResult Function()? toggleThemeMode,
    TResult Function(String homeAssistantUrl)? updateHomeAssistantUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeApp value) initializeApp,
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_UpdateHomeAssistantUrl value)
        updateHomeAssistantUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializeApp value)? initializeApp,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_UpdateHomeAssistantUrl value)? updateHomeAssistantUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeApp value)? initializeApp,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_UpdateHomeAssistantUrl value)? updateHomeAssistantUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$$_InitializeAppCopyWith<$Res> {
  factory _$$_InitializeAppCopyWith(
          _$_InitializeApp value, $Res Function(_$_InitializeApp) then) =
      __$$_InitializeAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializeAppCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_InitializeAppCopyWith<$Res> {
  __$$_InitializeAppCopyWithImpl(
      _$_InitializeApp _value, $Res Function(_$_InitializeApp) _then)
      : super(_value, (v) => _then(v as _$_InitializeApp));

  @override
  _$_InitializeApp get _value => super._value as _$_InitializeApp;
}

/// @nodoc

class _$_InitializeApp with DiagnosticableTreeMixin implements _InitializeApp {
  const _$_InitializeApp();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.initializeApp()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppEvent.initializeApp'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitializeApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeApp,
    required TResult Function(ThemeMode themeMode) changeThemeMode,
    required TResult Function() toggleThemeMode,
    required TResult Function(String homeAssistantUrl) updateHomeAssistantUrl,
  }) {
    return initializeApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializeApp,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    TResult Function()? toggleThemeMode,
    TResult Function(String homeAssistantUrl)? updateHomeAssistantUrl,
  }) {
    return initializeApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeApp,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    TResult Function()? toggleThemeMode,
    TResult Function(String homeAssistantUrl)? updateHomeAssistantUrl,
    required TResult orElse(),
  }) {
    if (initializeApp != null) {
      return initializeApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeApp value) initializeApp,
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_UpdateHomeAssistantUrl value)
        updateHomeAssistantUrl,
  }) {
    return initializeApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializeApp value)? initializeApp,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_UpdateHomeAssistantUrl value)? updateHomeAssistantUrl,
  }) {
    return initializeApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeApp value)? initializeApp,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_UpdateHomeAssistantUrl value)? updateHomeAssistantUrl,
    required TResult orElse(),
  }) {
    if (initializeApp != null) {
      return initializeApp(this);
    }
    return orElse();
  }
}

abstract class _InitializeApp implements AppEvent {
  const factory _InitializeApp() = _$_InitializeApp;
}

/// @nodoc
abstract class _$$_ChangeThemeModeCopyWith<$Res> {
  factory _$$_ChangeThemeModeCopyWith(
          _$_ChangeThemeMode value, $Res Function(_$_ChangeThemeMode) then) =
      __$$_ChangeThemeModeCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$_ChangeThemeModeCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$_ChangeThemeModeCopyWith<$Res> {
  __$$_ChangeThemeModeCopyWithImpl(
      _$_ChangeThemeMode _value, $Res Function(_$_ChangeThemeMode) _then)
      : super(_value, (v) => _then(v as _$_ChangeThemeMode));

  @override
  _$_ChangeThemeMode get _value => super._value as _$_ChangeThemeMode;

  @override
  $Res call({
    Object? themeMode = freezed,
  }) {
    return _then(_$_ChangeThemeMode(
      themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_ChangeThemeMode
    with DiagnosticableTreeMixin
    implements _ChangeThemeMode {
  const _$_ChangeThemeMode(this.themeMode);

  @override
  final ThemeMode themeMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.changeThemeMode(themeMode: $themeMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppEvent.changeThemeMode'))
      ..add(DiagnosticsProperty('themeMode', themeMode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeThemeMode &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(themeMode));

  @JsonKey(ignore: true)
  @override
  _$$_ChangeThemeModeCopyWith<_$_ChangeThemeMode> get copyWith =>
      __$$_ChangeThemeModeCopyWithImpl<_$_ChangeThemeMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeApp,
    required TResult Function(ThemeMode themeMode) changeThemeMode,
    required TResult Function() toggleThemeMode,
    required TResult Function(String homeAssistantUrl) updateHomeAssistantUrl,
  }) {
    return changeThemeMode(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializeApp,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    TResult Function()? toggleThemeMode,
    TResult Function(String homeAssistantUrl)? updateHomeAssistantUrl,
  }) {
    return changeThemeMode?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeApp,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    TResult Function()? toggleThemeMode,
    TResult Function(String homeAssistantUrl)? updateHomeAssistantUrl,
    required TResult orElse(),
  }) {
    if (changeThemeMode != null) {
      return changeThemeMode(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeApp value) initializeApp,
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_UpdateHomeAssistantUrl value)
        updateHomeAssistantUrl,
  }) {
    return changeThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializeApp value)? initializeApp,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_UpdateHomeAssistantUrl value)? updateHomeAssistantUrl,
  }) {
    return changeThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeApp value)? initializeApp,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_UpdateHomeAssistantUrl value)? updateHomeAssistantUrl,
    required TResult orElse(),
  }) {
    if (changeThemeMode != null) {
      return changeThemeMode(this);
    }
    return orElse();
  }
}

abstract class _ChangeThemeMode implements AppEvent {
  const factory _ChangeThemeMode(final ThemeMode themeMode) =
      _$_ChangeThemeMode;

  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ChangeThemeModeCopyWith<_$_ChangeThemeMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToggleThemeModeCopyWith<$Res> {
  factory _$$_ToggleThemeModeCopyWith(
          _$_ToggleThemeMode value, $Res Function(_$_ToggleThemeMode) then) =
      __$$_ToggleThemeModeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleThemeModeCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$_ToggleThemeModeCopyWith<$Res> {
  __$$_ToggleThemeModeCopyWithImpl(
      _$_ToggleThemeMode _value, $Res Function(_$_ToggleThemeMode) _then)
      : super(_value, (v) => _then(v as _$_ToggleThemeMode));

  @override
  _$_ToggleThemeMode get _value => super._value as _$_ToggleThemeMode;
}

/// @nodoc

class _$_ToggleThemeMode
    with DiagnosticableTreeMixin
    implements _ToggleThemeMode {
  const _$_ToggleThemeMode();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.toggleThemeMode()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppEvent.toggleThemeMode'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToggleThemeMode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeApp,
    required TResult Function(ThemeMode themeMode) changeThemeMode,
    required TResult Function() toggleThemeMode,
    required TResult Function(String homeAssistantUrl) updateHomeAssistantUrl,
  }) {
    return toggleThemeMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializeApp,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    TResult Function()? toggleThemeMode,
    TResult Function(String homeAssistantUrl)? updateHomeAssistantUrl,
  }) {
    return toggleThemeMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeApp,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    TResult Function()? toggleThemeMode,
    TResult Function(String homeAssistantUrl)? updateHomeAssistantUrl,
    required TResult orElse(),
  }) {
    if (toggleThemeMode != null) {
      return toggleThemeMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeApp value) initializeApp,
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_UpdateHomeAssistantUrl value)
        updateHomeAssistantUrl,
  }) {
    return toggleThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializeApp value)? initializeApp,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_UpdateHomeAssistantUrl value)? updateHomeAssistantUrl,
  }) {
    return toggleThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeApp value)? initializeApp,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_UpdateHomeAssistantUrl value)? updateHomeAssistantUrl,
    required TResult orElse(),
  }) {
    if (toggleThemeMode != null) {
      return toggleThemeMode(this);
    }
    return orElse();
  }
}

abstract class _ToggleThemeMode implements AppEvent {
  const factory _ToggleThemeMode() = _$_ToggleThemeMode;
}

/// @nodoc
abstract class _$$_UpdateHomeAssistantUrlCopyWith<$Res> {
  factory _$$_UpdateHomeAssistantUrlCopyWith(_$_UpdateHomeAssistantUrl value,
          $Res Function(_$_UpdateHomeAssistantUrl) then) =
      __$$_UpdateHomeAssistantUrlCopyWithImpl<$Res>;
  $Res call({String homeAssistantUrl});
}

/// @nodoc
class __$$_UpdateHomeAssistantUrlCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$_UpdateHomeAssistantUrlCopyWith<$Res> {
  __$$_UpdateHomeAssistantUrlCopyWithImpl(_$_UpdateHomeAssistantUrl _value,
      $Res Function(_$_UpdateHomeAssistantUrl) _then)
      : super(_value, (v) => _then(v as _$_UpdateHomeAssistantUrl));

  @override
  _$_UpdateHomeAssistantUrl get _value =>
      super._value as _$_UpdateHomeAssistantUrl;

  @override
  $Res call({
    Object? homeAssistantUrl = freezed,
  }) {
    return _then(_$_UpdateHomeAssistantUrl(
      homeAssistantUrl == freezed
          ? _value.homeAssistantUrl
          : homeAssistantUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateHomeAssistantUrl
    with DiagnosticableTreeMixin
    implements _UpdateHomeAssistantUrl {
  const _$_UpdateHomeAssistantUrl(this.homeAssistantUrl);

  @override
  final String homeAssistantUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.updateHomeAssistantUrl(homeAssistantUrl: $homeAssistantUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppEvent.updateHomeAssistantUrl'))
      ..add(DiagnosticsProperty('homeAssistantUrl', homeAssistantUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateHomeAssistantUrl &&
            const DeepCollectionEquality()
                .equals(other.homeAssistantUrl, homeAssistantUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(homeAssistantUrl));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateHomeAssistantUrlCopyWith<_$_UpdateHomeAssistantUrl> get copyWith =>
      __$$_UpdateHomeAssistantUrlCopyWithImpl<_$_UpdateHomeAssistantUrl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeApp,
    required TResult Function(ThemeMode themeMode) changeThemeMode,
    required TResult Function() toggleThemeMode,
    required TResult Function(String homeAssistantUrl) updateHomeAssistantUrl,
  }) {
    return updateHomeAssistantUrl(homeAssistantUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializeApp,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    TResult Function()? toggleThemeMode,
    TResult Function(String homeAssistantUrl)? updateHomeAssistantUrl,
  }) {
    return updateHomeAssistantUrl?.call(homeAssistantUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeApp,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    TResult Function()? toggleThemeMode,
    TResult Function(String homeAssistantUrl)? updateHomeAssistantUrl,
    required TResult orElse(),
  }) {
    if (updateHomeAssistantUrl != null) {
      return updateHomeAssistantUrl(homeAssistantUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeApp value) initializeApp,
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_UpdateHomeAssistantUrl value)
        updateHomeAssistantUrl,
  }) {
    return updateHomeAssistantUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializeApp value)? initializeApp,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_UpdateHomeAssistantUrl value)? updateHomeAssistantUrl,
  }) {
    return updateHomeAssistantUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeApp value)? initializeApp,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_UpdateHomeAssistantUrl value)? updateHomeAssistantUrl,
    required TResult orElse(),
  }) {
    if (updateHomeAssistantUrl != null) {
      return updateHomeAssistantUrl(this);
    }
    return orElse();
  }
}

abstract class _UpdateHomeAssistantUrl implements AppEvent {
  const factory _UpdateHomeAssistantUrl(final String homeAssistantUrl) =
      _$_UpdateHomeAssistantUrl;

  String get homeAssistantUrl => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateHomeAssistantUrlCopyWith<_$_UpdateHomeAssistantUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusUninitialized value) uninitialized,
    required TResult Function(_StatusInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StatusUninitialized value)? uninitialized,
    TResult Function(_StatusInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusUninitialized value)? uninitialized,
    TResult Function(_StatusInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStatusCopyWith<$Res> {
  factory $AppStatusCopyWith(AppStatus value, $Res Function(AppStatus) then) =
      _$AppStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStatusCopyWithImpl<$Res> implements $AppStatusCopyWith<$Res> {
  _$AppStatusCopyWithImpl(this._value, this._then);

  final AppStatus _value;
  // ignore: unused_field
  final $Res Function(AppStatus) _then;
}

/// @nodoc
abstract class _$$_StatusUninitializedCopyWith<$Res> {
  factory _$$_StatusUninitializedCopyWith(_$_StatusUninitialized value,
          $Res Function(_$_StatusUninitialized) then) =
      __$$_StatusUninitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StatusUninitializedCopyWithImpl<$Res>
    extends _$AppStatusCopyWithImpl<$Res>
    implements _$$_StatusUninitializedCopyWith<$Res> {
  __$$_StatusUninitializedCopyWithImpl(_$_StatusUninitialized _value,
      $Res Function(_$_StatusUninitialized) _then)
      : super(_value, (v) => _then(v as _$_StatusUninitialized));

  @override
  _$_StatusUninitialized get _value => super._value as _$_StatusUninitialized;
}

/// @nodoc

class _$_StatusUninitialized
    with DiagnosticableTreeMixin
    implements _StatusUninitialized {
  const _$_StatusUninitialized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppStatus.uninitialized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppStatus.uninitialized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StatusUninitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() initialized,
  }) {
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? initialized,
  }) {
    return uninitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusUninitialized value) uninitialized,
    required TResult Function(_StatusInitialized value) initialized,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StatusUninitialized value)? uninitialized,
    TResult Function(_StatusInitialized value)? initialized,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusUninitialized value)? uninitialized,
    TResult Function(_StatusInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class _StatusUninitialized implements AppStatus {
  const factory _StatusUninitialized() = _$_StatusUninitialized;
}

/// @nodoc
abstract class _$$_StatusInitializedCopyWith<$Res> {
  factory _$$_StatusInitializedCopyWith(_$_StatusInitialized value,
          $Res Function(_$_StatusInitialized) then) =
      __$$_StatusInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StatusInitializedCopyWithImpl<$Res>
    extends _$AppStatusCopyWithImpl<$Res>
    implements _$$_StatusInitializedCopyWith<$Res> {
  __$$_StatusInitializedCopyWithImpl(
      _$_StatusInitialized _value, $Res Function(_$_StatusInitialized) _then)
      : super(_value, (v) => _then(v as _$_StatusInitialized));

  @override
  _$_StatusInitialized get _value => super._value as _$_StatusInitialized;
}

/// @nodoc

class _$_StatusInitialized
    with DiagnosticableTreeMixin
    implements _StatusInitialized {
  const _$_StatusInitialized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppStatus.initialized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppStatus.initialized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StatusInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() initialized,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? initialized,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusUninitialized value) uninitialized,
    required TResult Function(_StatusInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StatusUninitialized value)? uninitialized,
    TResult Function(_StatusInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusUninitialized value)? uninitialized,
    TResult Function(_StatusInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _StatusInitialized implements AppStatus {
  const factory _StatusInitialized() = _$_StatusInitialized;
}
