// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'web_socket_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WebSocketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AreaRegistriesDTO areaRegistriesDTO)
        areaRegistryListUpdate,
    required TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)
        deviceRegistryListUpdate,
    required TResult Function(EntityRegistriesDto entityRegistriesDTO)
        entityRegistryListUpdate,
    required TResult Function(StateChangeDto stateChangeDto) stateChangeUpdate,
    required TResult Function(EntityStatesDTO entityStatesDTO)
        entityStatesUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AreaRegistriesDTO areaRegistriesDTO)?
        areaRegistryListUpdate,
    TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)?
        deviceRegistryListUpdate,
    TResult Function(EntityRegistriesDto entityRegistriesDTO)?
        entityRegistryListUpdate,
    TResult Function(StateChangeDto stateChangeDto)? stateChangeUpdate,
    TResult Function(EntityStatesDTO entityStatesDTO)? entityStatesUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AreaRegistriesDTO areaRegistriesDTO)?
        areaRegistryListUpdate,
    TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)?
        deviceRegistryListUpdate,
    TResult Function(EntityRegistriesDto entityRegistriesDTO)?
        entityRegistryListUpdate,
    TResult Function(StateChangeDto stateChangeDto)? stateChangeUpdate,
    TResult Function(EntityStatesDTO entityStatesDTO)? entityStatesUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AreaRegistryListEvent value)
        areaRegistryListUpdate,
    required TResult Function(_DeviceRegistryListEvent value)
        deviceRegistryListUpdate,
    required TResult Function(_EntityRegistryListEvent value)
        entityRegistryListUpdate,
    required TResult Function(_EntityStateChange value) stateChangeUpdate,
    required TResult Function(_EntityStatesEvent value) entityStatesUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AreaRegistryListEvent value)? areaRegistryListUpdate,
    TResult Function(_DeviceRegistryListEvent value)? deviceRegistryListUpdate,
    TResult Function(_EntityRegistryListEvent value)? entityRegistryListUpdate,
    TResult Function(_EntityStateChange value)? stateChangeUpdate,
    TResult Function(_EntityStatesEvent value)? entityStatesUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AreaRegistryListEvent value)? areaRegistryListUpdate,
    TResult Function(_DeviceRegistryListEvent value)? deviceRegistryListUpdate,
    TResult Function(_EntityRegistryListEvent value)? entityRegistryListUpdate,
    TResult Function(_EntityStateChange value)? stateChangeUpdate,
    TResult Function(_EntityStatesEvent value)? entityStatesUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketEventCopyWith<$Res> {
  factory $WebSocketEventCopyWith(
          WebSocketEvent value, $Res Function(WebSocketEvent) then) =
      _$WebSocketEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WebSocketEventCopyWithImpl<$Res>
    implements $WebSocketEventCopyWith<$Res> {
  _$WebSocketEventCopyWithImpl(this._value, this._then);

  final WebSocketEvent _value;
  // ignore: unused_field
  final $Res Function(WebSocketEvent) _then;
}

/// @nodoc
abstract class _$$_AreaRegistryListEventCopyWith<$Res> {
  factory _$$_AreaRegistryListEventCopyWith(_$_AreaRegistryListEvent value,
          $Res Function(_$_AreaRegistryListEvent) then) =
      __$$_AreaRegistryListEventCopyWithImpl<$Res>;
  $Res call({AreaRegistriesDTO areaRegistriesDTO});

  $AreaRegistriesDTOCopyWith<$Res> get areaRegistriesDTO;
}

/// @nodoc
class __$$_AreaRegistryListEventCopyWithImpl<$Res>
    extends _$WebSocketEventCopyWithImpl<$Res>
    implements _$$_AreaRegistryListEventCopyWith<$Res> {
  __$$_AreaRegistryListEventCopyWithImpl(_$_AreaRegistryListEvent _value,
      $Res Function(_$_AreaRegistryListEvent) _then)
      : super(_value, (v) => _then(v as _$_AreaRegistryListEvent));

  @override
  _$_AreaRegistryListEvent get _value =>
      super._value as _$_AreaRegistryListEvent;

  @override
  $Res call({
    Object? areaRegistriesDTO = freezed,
  }) {
    return _then(_$_AreaRegistryListEvent(
      areaRegistriesDTO == freezed
          ? _value.areaRegistriesDTO
          : areaRegistriesDTO // ignore: cast_nullable_to_non_nullable
              as AreaRegistriesDTO,
    ));
  }

  @override
  $AreaRegistriesDTOCopyWith<$Res> get areaRegistriesDTO {
    return $AreaRegistriesDTOCopyWith<$Res>(_value.areaRegistriesDTO, (value) {
      return _then(_value.copyWith(areaRegistriesDTO: value));
    });
  }
}

/// @nodoc

class _$_AreaRegistryListEvent implements _AreaRegistryListEvent {
  const _$_AreaRegistryListEvent(this.areaRegistriesDTO);

  @override
  final AreaRegistriesDTO areaRegistriesDTO;

  @override
  String toString() {
    return 'WebSocketEvent.areaRegistryListUpdate(areaRegistriesDTO: $areaRegistriesDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AreaRegistryListEvent &&
            const DeepCollectionEquality()
                .equals(other.areaRegistriesDTO, areaRegistriesDTO));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(areaRegistriesDTO));

  @JsonKey(ignore: true)
  @override
  _$$_AreaRegistryListEventCopyWith<_$_AreaRegistryListEvent> get copyWith =>
      __$$_AreaRegistryListEventCopyWithImpl<_$_AreaRegistryListEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AreaRegistriesDTO areaRegistriesDTO)
        areaRegistryListUpdate,
    required TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)
        deviceRegistryListUpdate,
    required TResult Function(EntityRegistriesDto entityRegistriesDTO)
        entityRegistryListUpdate,
    required TResult Function(StateChangeDto stateChangeDto) stateChangeUpdate,
    required TResult Function(EntityStatesDTO entityStatesDTO)
        entityStatesUpdate,
  }) {
    return areaRegistryListUpdate(areaRegistriesDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AreaRegistriesDTO areaRegistriesDTO)?
        areaRegistryListUpdate,
    TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)?
        deviceRegistryListUpdate,
    TResult Function(EntityRegistriesDto entityRegistriesDTO)?
        entityRegistryListUpdate,
    TResult Function(StateChangeDto stateChangeDto)? stateChangeUpdate,
    TResult Function(EntityStatesDTO entityStatesDTO)? entityStatesUpdate,
  }) {
    return areaRegistryListUpdate?.call(areaRegistriesDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AreaRegistriesDTO areaRegistriesDTO)?
        areaRegistryListUpdate,
    TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)?
        deviceRegistryListUpdate,
    TResult Function(EntityRegistriesDto entityRegistriesDTO)?
        entityRegistryListUpdate,
    TResult Function(StateChangeDto stateChangeDto)? stateChangeUpdate,
    TResult Function(EntityStatesDTO entityStatesDTO)? entityStatesUpdate,
    required TResult orElse(),
  }) {
    if (areaRegistryListUpdate != null) {
      return areaRegistryListUpdate(areaRegistriesDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AreaRegistryListEvent value)
        areaRegistryListUpdate,
    required TResult Function(_DeviceRegistryListEvent value)
        deviceRegistryListUpdate,
    required TResult Function(_EntityRegistryListEvent value)
        entityRegistryListUpdate,
    required TResult Function(_EntityStateChange value) stateChangeUpdate,
    required TResult Function(_EntityStatesEvent value) entityStatesUpdate,
  }) {
    return areaRegistryListUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AreaRegistryListEvent value)? areaRegistryListUpdate,
    TResult Function(_DeviceRegistryListEvent value)? deviceRegistryListUpdate,
    TResult Function(_EntityRegistryListEvent value)? entityRegistryListUpdate,
    TResult Function(_EntityStateChange value)? stateChangeUpdate,
    TResult Function(_EntityStatesEvent value)? entityStatesUpdate,
  }) {
    return areaRegistryListUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AreaRegistryListEvent value)? areaRegistryListUpdate,
    TResult Function(_DeviceRegistryListEvent value)? deviceRegistryListUpdate,
    TResult Function(_EntityRegistryListEvent value)? entityRegistryListUpdate,
    TResult Function(_EntityStateChange value)? stateChangeUpdate,
    TResult Function(_EntityStatesEvent value)? entityStatesUpdate,
    required TResult orElse(),
  }) {
    if (areaRegistryListUpdate != null) {
      return areaRegistryListUpdate(this);
    }
    return orElse();
  }
}

abstract class _AreaRegistryListEvent implements WebSocketEvent {
  const factory _AreaRegistryListEvent(
      final AreaRegistriesDTO areaRegistriesDTO) = _$_AreaRegistryListEvent;

  AreaRegistriesDTO get areaRegistriesDTO => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AreaRegistryListEventCopyWith<_$_AreaRegistryListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeviceRegistryListEventCopyWith<$Res> {
  factory _$$_DeviceRegistryListEventCopyWith(_$_DeviceRegistryListEvent value,
          $Res Function(_$_DeviceRegistryListEvent) then) =
      __$$_DeviceRegistryListEventCopyWithImpl<$Res>;
  $Res call({DeviceRegistriesDTO deviceRegistriesDTO});

  $DeviceRegistriesDTOCopyWith<$Res> get deviceRegistriesDTO;
}

/// @nodoc
class __$$_DeviceRegistryListEventCopyWithImpl<$Res>
    extends _$WebSocketEventCopyWithImpl<$Res>
    implements _$$_DeviceRegistryListEventCopyWith<$Res> {
  __$$_DeviceRegistryListEventCopyWithImpl(_$_DeviceRegistryListEvent _value,
      $Res Function(_$_DeviceRegistryListEvent) _then)
      : super(_value, (v) => _then(v as _$_DeviceRegistryListEvent));

  @override
  _$_DeviceRegistryListEvent get _value =>
      super._value as _$_DeviceRegistryListEvent;

  @override
  $Res call({
    Object? deviceRegistriesDTO = freezed,
  }) {
    return _then(_$_DeviceRegistryListEvent(
      deviceRegistriesDTO == freezed
          ? _value.deviceRegistriesDTO
          : deviceRegistriesDTO // ignore: cast_nullable_to_non_nullable
              as DeviceRegistriesDTO,
    ));
  }

  @override
  $DeviceRegistriesDTOCopyWith<$Res> get deviceRegistriesDTO {
    return $DeviceRegistriesDTOCopyWith<$Res>(_value.deviceRegistriesDTO,
        (value) {
      return _then(_value.copyWith(deviceRegistriesDTO: value));
    });
  }
}

/// @nodoc

class _$_DeviceRegistryListEvent implements _DeviceRegistryListEvent {
  const _$_DeviceRegistryListEvent(this.deviceRegistriesDTO);

  @override
  final DeviceRegistriesDTO deviceRegistriesDTO;

  @override
  String toString() {
    return 'WebSocketEvent.deviceRegistryListUpdate(deviceRegistriesDTO: $deviceRegistriesDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceRegistryListEvent &&
            const DeepCollectionEquality()
                .equals(other.deviceRegistriesDTO, deviceRegistriesDTO));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(deviceRegistriesDTO));

  @JsonKey(ignore: true)
  @override
  _$$_DeviceRegistryListEventCopyWith<_$_DeviceRegistryListEvent>
      get copyWith =>
          __$$_DeviceRegistryListEventCopyWithImpl<_$_DeviceRegistryListEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AreaRegistriesDTO areaRegistriesDTO)
        areaRegistryListUpdate,
    required TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)
        deviceRegistryListUpdate,
    required TResult Function(EntityRegistriesDto entityRegistriesDTO)
        entityRegistryListUpdate,
    required TResult Function(StateChangeDto stateChangeDto) stateChangeUpdate,
    required TResult Function(EntityStatesDTO entityStatesDTO)
        entityStatesUpdate,
  }) {
    return deviceRegistryListUpdate(deviceRegistriesDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AreaRegistriesDTO areaRegistriesDTO)?
        areaRegistryListUpdate,
    TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)?
        deviceRegistryListUpdate,
    TResult Function(EntityRegistriesDto entityRegistriesDTO)?
        entityRegistryListUpdate,
    TResult Function(StateChangeDto stateChangeDto)? stateChangeUpdate,
    TResult Function(EntityStatesDTO entityStatesDTO)? entityStatesUpdate,
  }) {
    return deviceRegistryListUpdate?.call(deviceRegistriesDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AreaRegistriesDTO areaRegistriesDTO)?
        areaRegistryListUpdate,
    TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)?
        deviceRegistryListUpdate,
    TResult Function(EntityRegistriesDto entityRegistriesDTO)?
        entityRegistryListUpdate,
    TResult Function(StateChangeDto stateChangeDto)? stateChangeUpdate,
    TResult Function(EntityStatesDTO entityStatesDTO)? entityStatesUpdate,
    required TResult orElse(),
  }) {
    if (deviceRegistryListUpdate != null) {
      return deviceRegistryListUpdate(deviceRegistriesDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AreaRegistryListEvent value)
        areaRegistryListUpdate,
    required TResult Function(_DeviceRegistryListEvent value)
        deviceRegistryListUpdate,
    required TResult Function(_EntityRegistryListEvent value)
        entityRegistryListUpdate,
    required TResult Function(_EntityStateChange value) stateChangeUpdate,
    required TResult Function(_EntityStatesEvent value) entityStatesUpdate,
  }) {
    return deviceRegistryListUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AreaRegistryListEvent value)? areaRegistryListUpdate,
    TResult Function(_DeviceRegistryListEvent value)? deviceRegistryListUpdate,
    TResult Function(_EntityRegistryListEvent value)? entityRegistryListUpdate,
    TResult Function(_EntityStateChange value)? stateChangeUpdate,
    TResult Function(_EntityStatesEvent value)? entityStatesUpdate,
  }) {
    return deviceRegistryListUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AreaRegistryListEvent value)? areaRegistryListUpdate,
    TResult Function(_DeviceRegistryListEvent value)? deviceRegistryListUpdate,
    TResult Function(_EntityRegistryListEvent value)? entityRegistryListUpdate,
    TResult Function(_EntityStateChange value)? stateChangeUpdate,
    TResult Function(_EntityStatesEvent value)? entityStatesUpdate,
    required TResult orElse(),
  }) {
    if (deviceRegistryListUpdate != null) {
      return deviceRegistryListUpdate(this);
    }
    return orElse();
  }
}

abstract class _DeviceRegistryListEvent implements WebSocketEvent {
  const factory _DeviceRegistryListEvent(
          final DeviceRegistriesDTO deviceRegistriesDTO) =
      _$_DeviceRegistryListEvent;

  DeviceRegistriesDTO get deviceRegistriesDTO =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DeviceRegistryListEventCopyWith<_$_DeviceRegistryListEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EntityRegistryListEventCopyWith<$Res> {
  factory _$$_EntityRegistryListEventCopyWith(_$_EntityRegistryListEvent value,
          $Res Function(_$_EntityRegistryListEvent) then) =
      __$$_EntityRegistryListEventCopyWithImpl<$Res>;
  $Res call({EntityRegistriesDto entityRegistriesDTO});

  $EntityRegistriesDtoCopyWith<$Res> get entityRegistriesDTO;
}

/// @nodoc
class __$$_EntityRegistryListEventCopyWithImpl<$Res>
    extends _$WebSocketEventCopyWithImpl<$Res>
    implements _$$_EntityRegistryListEventCopyWith<$Res> {
  __$$_EntityRegistryListEventCopyWithImpl(_$_EntityRegistryListEvent _value,
      $Res Function(_$_EntityRegistryListEvent) _then)
      : super(_value, (v) => _then(v as _$_EntityRegistryListEvent));

  @override
  _$_EntityRegistryListEvent get _value =>
      super._value as _$_EntityRegistryListEvent;

  @override
  $Res call({
    Object? entityRegistriesDTO = freezed,
  }) {
    return _then(_$_EntityRegistryListEvent(
      entityRegistriesDTO == freezed
          ? _value.entityRegistriesDTO
          : entityRegistriesDTO // ignore: cast_nullable_to_non_nullable
              as EntityRegistriesDto,
    ));
  }

  @override
  $EntityRegistriesDtoCopyWith<$Res> get entityRegistriesDTO {
    return $EntityRegistriesDtoCopyWith<$Res>(_value.entityRegistriesDTO,
        (value) {
      return _then(_value.copyWith(entityRegistriesDTO: value));
    });
  }
}

/// @nodoc

class _$_EntityRegistryListEvent implements _EntityRegistryListEvent {
  const _$_EntityRegistryListEvent(this.entityRegistriesDTO);

  @override
  final EntityRegistriesDto entityRegistriesDTO;

  @override
  String toString() {
    return 'WebSocketEvent.entityRegistryListUpdate(entityRegistriesDTO: $entityRegistriesDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityRegistryListEvent &&
            const DeepCollectionEquality()
                .equals(other.entityRegistriesDTO, entityRegistriesDTO));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(entityRegistriesDTO));

  @JsonKey(ignore: true)
  @override
  _$$_EntityRegistryListEventCopyWith<_$_EntityRegistryListEvent>
      get copyWith =>
          __$$_EntityRegistryListEventCopyWithImpl<_$_EntityRegistryListEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AreaRegistriesDTO areaRegistriesDTO)
        areaRegistryListUpdate,
    required TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)
        deviceRegistryListUpdate,
    required TResult Function(EntityRegistriesDto entityRegistriesDTO)
        entityRegistryListUpdate,
    required TResult Function(StateChangeDto stateChangeDto) stateChangeUpdate,
    required TResult Function(EntityStatesDTO entityStatesDTO)
        entityStatesUpdate,
  }) {
    return entityRegistryListUpdate(entityRegistriesDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AreaRegistriesDTO areaRegistriesDTO)?
        areaRegistryListUpdate,
    TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)?
        deviceRegistryListUpdate,
    TResult Function(EntityRegistriesDto entityRegistriesDTO)?
        entityRegistryListUpdate,
    TResult Function(StateChangeDto stateChangeDto)? stateChangeUpdate,
    TResult Function(EntityStatesDTO entityStatesDTO)? entityStatesUpdate,
  }) {
    return entityRegistryListUpdate?.call(entityRegistriesDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AreaRegistriesDTO areaRegistriesDTO)?
        areaRegistryListUpdate,
    TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)?
        deviceRegistryListUpdate,
    TResult Function(EntityRegistriesDto entityRegistriesDTO)?
        entityRegistryListUpdate,
    TResult Function(StateChangeDto stateChangeDto)? stateChangeUpdate,
    TResult Function(EntityStatesDTO entityStatesDTO)? entityStatesUpdate,
    required TResult orElse(),
  }) {
    if (entityRegistryListUpdate != null) {
      return entityRegistryListUpdate(entityRegistriesDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AreaRegistryListEvent value)
        areaRegistryListUpdate,
    required TResult Function(_DeviceRegistryListEvent value)
        deviceRegistryListUpdate,
    required TResult Function(_EntityRegistryListEvent value)
        entityRegistryListUpdate,
    required TResult Function(_EntityStateChange value) stateChangeUpdate,
    required TResult Function(_EntityStatesEvent value) entityStatesUpdate,
  }) {
    return entityRegistryListUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AreaRegistryListEvent value)? areaRegistryListUpdate,
    TResult Function(_DeviceRegistryListEvent value)? deviceRegistryListUpdate,
    TResult Function(_EntityRegistryListEvent value)? entityRegistryListUpdate,
    TResult Function(_EntityStateChange value)? stateChangeUpdate,
    TResult Function(_EntityStatesEvent value)? entityStatesUpdate,
  }) {
    return entityRegistryListUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AreaRegistryListEvent value)? areaRegistryListUpdate,
    TResult Function(_DeviceRegistryListEvent value)? deviceRegistryListUpdate,
    TResult Function(_EntityRegistryListEvent value)? entityRegistryListUpdate,
    TResult Function(_EntityStateChange value)? stateChangeUpdate,
    TResult Function(_EntityStatesEvent value)? entityStatesUpdate,
    required TResult orElse(),
  }) {
    if (entityRegistryListUpdate != null) {
      return entityRegistryListUpdate(this);
    }
    return orElse();
  }
}

abstract class _EntityRegistryListEvent implements WebSocketEvent {
  const factory _EntityRegistryListEvent(
          final EntityRegistriesDto entityRegistriesDTO) =
      _$_EntityRegistryListEvent;

  EntityRegistriesDto get entityRegistriesDTO =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EntityRegistryListEventCopyWith<_$_EntityRegistryListEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EntityStateChangeCopyWith<$Res> {
  factory _$$_EntityStateChangeCopyWith(_$_EntityStateChange value,
          $Res Function(_$_EntityStateChange) then) =
      __$$_EntityStateChangeCopyWithImpl<$Res>;
  $Res call({StateChangeDto stateChangeDto});

  $StateChangeDtoCopyWith<$Res> get stateChangeDto;
}

/// @nodoc
class __$$_EntityStateChangeCopyWithImpl<$Res>
    extends _$WebSocketEventCopyWithImpl<$Res>
    implements _$$_EntityStateChangeCopyWith<$Res> {
  __$$_EntityStateChangeCopyWithImpl(
      _$_EntityStateChange _value, $Res Function(_$_EntityStateChange) _then)
      : super(_value, (v) => _then(v as _$_EntityStateChange));

  @override
  _$_EntityStateChange get _value => super._value as _$_EntityStateChange;

  @override
  $Res call({
    Object? stateChangeDto = freezed,
  }) {
    return _then(_$_EntityStateChange(
      stateChangeDto == freezed
          ? _value.stateChangeDto
          : stateChangeDto // ignore: cast_nullable_to_non_nullable
              as StateChangeDto,
    ));
  }

  @override
  $StateChangeDtoCopyWith<$Res> get stateChangeDto {
    return $StateChangeDtoCopyWith<$Res>(_value.stateChangeDto, (value) {
      return _then(_value.copyWith(stateChangeDto: value));
    });
  }
}

/// @nodoc

class _$_EntityStateChange implements _EntityStateChange {
  const _$_EntityStateChange(this.stateChangeDto);

  @override
  final StateChangeDto stateChangeDto;

  @override
  String toString() {
    return 'WebSocketEvent.stateChangeUpdate(stateChangeDto: $stateChangeDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityStateChange &&
            const DeepCollectionEquality()
                .equals(other.stateChangeDto, stateChangeDto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(stateChangeDto));

  @JsonKey(ignore: true)
  @override
  _$$_EntityStateChangeCopyWith<_$_EntityStateChange> get copyWith =>
      __$$_EntityStateChangeCopyWithImpl<_$_EntityStateChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AreaRegistriesDTO areaRegistriesDTO)
        areaRegistryListUpdate,
    required TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)
        deviceRegistryListUpdate,
    required TResult Function(EntityRegistriesDto entityRegistriesDTO)
        entityRegistryListUpdate,
    required TResult Function(StateChangeDto stateChangeDto) stateChangeUpdate,
    required TResult Function(EntityStatesDTO entityStatesDTO)
        entityStatesUpdate,
  }) {
    return stateChangeUpdate(stateChangeDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AreaRegistriesDTO areaRegistriesDTO)?
        areaRegistryListUpdate,
    TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)?
        deviceRegistryListUpdate,
    TResult Function(EntityRegistriesDto entityRegistriesDTO)?
        entityRegistryListUpdate,
    TResult Function(StateChangeDto stateChangeDto)? stateChangeUpdate,
    TResult Function(EntityStatesDTO entityStatesDTO)? entityStatesUpdate,
  }) {
    return stateChangeUpdate?.call(stateChangeDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AreaRegistriesDTO areaRegistriesDTO)?
        areaRegistryListUpdate,
    TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)?
        deviceRegistryListUpdate,
    TResult Function(EntityRegistriesDto entityRegistriesDTO)?
        entityRegistryListUpdate,
    TResult Function(StateChangeDto stateChangeDto)? stateChangeUpdate,
    TResult Function(EntityStatesDTO entityStatesDTO)? entityStatesUpdate,
    required TResult orElse(),
  }) {
    if (stateChangeUpdate != null) {
      return stateChangeUpdate(stateChangeDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AreaRegistryListEvent value)
        areaRegistryListUpdate,
    required TResult Function(_DeviceRegistryListEvent value)
        deviceRegistryListUpdate,
    required TResult Function(_EntityRegistryListEvent value)
        entityRegistryListUpdate,
    required TResult Function(_EntityStateChange value) stateChangeUpdate,
    required TResult Function(_EntityStatesEvent value) entityStatesUpdate,
  }) {
    return stateChangeUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AreaRegistryListEvent value)? areaRegistryListUpdate,
    TResult Function(_DeviceRegistryListEvent value)? deviceRegistryListUpdate,
    TResult Function(_EntityRegistryListEvent value)? entityRegistryListUpdate,
    TResult Function(_EntityStateChange value)? stateChangeUpdate,
    TResult Function(_EntityStatesEvent value)? entityStatesUpdate,
  }) {
    return stateChangeUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AreaRegistryListEvent value)? areaRegistryListUpdate,
    TResult Function(_DeviceRegistryListEvent value)? deviceRegistryListUpdate,
    TResult Function(_EntityRegistryListEvent value)? entityRegistryListUpdate,
    TResult Function(_EntityStateChange value)? stateChangeUpdate,
    TResult Function(_EntityStatesEvent value)? entityStatesUpdate,
    required TResult orElse(),
  }) {
    if (stateChangeUpdate != null) {
      return stateChangeUpdate(this);
    }
    return orElse();
  }
}

abstract class _EntityStateChange implements WebSocketEvent {
  const factory _EntityStateChange(final StateChangeDto stateChangeDto) =
      _$_EntityStateChange;

  StateChangeDto get stateChangeDto => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EntityStateChangeCopyWith<_$_EntityStateChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EntityStatesEventCopyWith<$Res> {
  factory _$$_EntityStatesEventCopyWith(_$_EntityStatesEvent value,
          $Res Function(_$_EntityStatesEvent) then) =
      __$$_EntityStatesEventCopyWithImpl<$Res>;
  $Res call({EntityStatesDTO entityStatesDTO});

  $EntityStatesDTOCopyWith<$Res> get entityStatesDTO;
}

/// @nodoc
class __$$_EntityStatesEventCopyWithImpl<$Res>
    extends _$WebSocketEventCopyWithImpl<$Res>
    implements _$$_EntityStatesEventCopyWith<$Res> {
  __$$_EntityStatesEventCopyWithImpl(
      _$_EntityStatesEvent _value, $Res Function(_$_EntityStatesEvent) _then)
      : super(_value, (v) => _then(v as _$_EntityStatesEvent));

  @override
  _$_EntityStatesEvent get _value => super._value as _$_EntityStatesEvent;

  @override
  $Res call({
    Object? entityStatesDTO = freezed,
  }) {
    return _then(_$_EntityStatesEvent(
      entityStatesDTO == freezed
          ? _value.entityStatesDTO
          : entityStatesDTO // ignore: cast_nullable_to_non_nullable
              as EntityStatesDTO,
    ));
  }

  @override
  $EntityStatesDTOCopyWith<$Res> get entityStatesDTO {
    return $EntityStatesDTOCopyWith<$Res>(_value.entityStatesDTO, (value) {
      return _then(_value.copyWith(entityStatesDTO: value));
    });
  }
}

/// @nodoc

class _$_EntityStatesEvent implements _EntityStatesEvent {
  const _$_EntityStatesEvent(this.entityStatesDTO);

  @override
  final EntityStatesDTO entityStatesDTO;

  @override
  String toString() {
    return 'WebSocketEvent.entityStatesUpdate(entityStatesDTO: $entityStatesDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityStatesEvent &&
            const DeepCollectionEquality()
                .equals(other.entityStatesDTO, entityStatesDTO));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(entityStatesDTO));

  @JsonKey(ignore: true)
  @override
  _$$_EntityStatesEventCopyWith<_$_EntityStatesEvent> get copyWith =>
      __$$_EntityStatesEventCopyWithImpl<_$_EntityStatesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AreaRegistriesDTO areaRegistriesDTO)
        areaRegistryListUpdate,
    required TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)
        deviceRegistryListUpdate,
    required TResult Function(EntityRegistriesDto entityRegistriesDTO)
        entityRegistryListUpdate,
    required TResult Function(StateChangeDto stateChangeDto) stateChangeUpdate,
    required TResult Function(EntityStatesDTO entityStatesDTO)
        entityStatesUpdate,
  }) {
    return entityStatesUpdate(entityStatesDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AreaRegistriesDTO areaRegistriesDTO)?
        areaRegistryListUpdate,
    TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)?
        deviceRegistryListUpdate,
    TResult Function(EntityRegistriesDto entityRegistriesDTO)?
        entityRegistryListUpdate,
    TResult Function(StateChangeDto stateChangeDto)? stateChangeUpdate,
    TResult Function(EntityStatesDTO entityStatesDTO)? entityStatesUpdate,
  }) {
    return entityStatesUpdate?.call(entityStatesDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AreaRegistriesDTO areaRegistriesDTO)?
        areaRegistryListUpdate,
    TResult Function(DeviceRegistriesDTO deviceRegistriesDTO)?
        deviceRegistryListUpdate,
    TResult Function(EntityRegistriesDto entityRegistriesDTO)?
        entityRegistryListUpdate,
    TResult Function(StateChangeDto stateChangeDto)? stateChangeUpdate,
    TResult Function(EntityStatesDTO entityStatesDTO)? entityStatesUpdate,
    required TResult orElse(),
  }) {
    if (entityStatesUpdate != null) {
      return entityStatesUpdate(entityStatesDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AreaRegistryListEvent value)
        areaRegistryListUpdate,
    required TResult Function(_DeviceRegistryListEvent value)
        deviceRegistryListUpdate,
    required TResult Function(_EntityRegistryListEvent value)
        entityRegistryListUpdate,
    required TResult Function(_EntityStateChange value) stateChangeUpdate,
    required TResult Function(_EntityStatesEvent value) entityStatesUpdate,
  }) {
    return entityStatesUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AreaRegistryListEvent value)? areaRegistryListUpdate,
    TResult Function(_DeviceRegistryListEvent value)? deviceRegistryListUpdate,
    TResult Function(_EntityRegistryListEvent value)? entityRegistryListUpdate,
    TResult Function(_EntityStateChange value)? stateChangeUpdate,
    TResult Function(_EntityStatesEvent value)? entityStatesUpdate,
  }) {
    return entityStatesUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AreaRegistryListEvent value)? areaRegistryListUpdate,
    TResult Function(_DeviceRegistryListEvent value)? deviceRegistryListUpdate,
    TResult Function(_EntityRegistryListEvent value)? entityRegistryListUpdate,
    TResult Function(_EntityStateChange value)? stateChangeUpdate,
    TResult Function(_EntityStatesEvent value)? entityStatesUpdate,
    required TResult orElse(),
  }) {
    if (entityStatesUpdate != null) {
      return entityStatesUpdate(this);
    }
    return orElse();
  }
}

abstract class _EntityStatesEvent implements WebSocketEvent {
  const factory _EntityStatesEvent(final EntityStatesDTO entityStatesDTO) =
      _$_EntityStatesEvent;

  EntityStatesDTO get entityStatesDTO => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EntityStatesEventCopyWith<_$_EntityStatesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
