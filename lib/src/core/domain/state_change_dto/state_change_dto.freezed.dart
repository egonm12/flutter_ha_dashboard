// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_change_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StateChangeDto _$StateChangeDtoFromJson(Map<String, dynamic> json) {
  return _StateChangeDto.fromJson(json);
}

/// @nodoc
mixin _$StateChangeDto {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  StateChangeEvent get event => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateChangeDtoCopyWith<StateChangeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateChangeDtoCopyWith<$Res> {
  factory $StateChangeDtoCopyWith(
          StateChangeDto value, $Res Function(StateChangeDto) then) =
      _$StateChangeDtoCopyWithImpl<$Res>;
  $Res call({int id, String type, StateChangeEvent event});

  $StateChangeEventCopyWith<$Res> get event;
}

/// @nodoc
class _$StateChangeDtoCopyWithImpl<$Res>
    implements $StateChangeDtoCopyWith<$Res> {
  _$StateChangeDtoCopyWithImpl(this._value, this._then);

  final StateChangeDto _value;
  // ignore: unused_field
  final $Res Function(StateChangeDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as StateChangeEvent,
    ));
  }

  @override
  $StateChangeEventCopyWith<$Res> get event {
    return $StateChangeEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
abstract class _$$_StateChangeDtoCopyWith<$Res>
    implements $StateChangeDtoCopyWith<$Res> {
  factory _$$_StateChangeDtoCopyWith(
          _$_StateChangeDto value, $Res Function(_$_StateChangeDto) then) =
      __$$_StateChangeDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String type, StateChangeEvent event});

  @override
  $StateChangeEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_StateChangeDtoCopyWithImpl<$Res>
    extends _$StateChangeDtoCopyWithImpl<$Res>
    implements _$$_StateChangeDtoCopyWith<$Res> {
  __$$_StateChangeDtoCopyWithImpl(
      _$_StateChangeDto _value, $Res Function(_$_StateChangeDto) _then)
      : super(_value, (v) => _then(v as _$_StateChangeDto));

  @override
  _$_StateChangeDto get _value => super._value as _$_StateChangeDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? event = freezed,
  }) {
    return _then(_$_StateChangeDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as StateChangeEvent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StateChangeDto implements _StateChangeDto {
  const _$_StateChangeDto(
      {required this.id, required this.type, required this.event});

  factory _$_StateChangeDto.fromJson(Map<String, dynamic> json) =>
      _$$_StateChangeDtoFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final StateChangeEvent event;

  @override
  String toString() {
    return 'StateChangeDto(id: $id, type: $type, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateChangeDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$_StateChangeDtoCopyWith<_$_StateChangeDto> get copyWith =>
      __$$_StateChangeDtoCopyWithImpl<_$_StateChangeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateChangeDtoToJson(this);
  }
}

abstract class _StateChangeDto implements StateChangeDto {
  const factory _StateChangeDto(
      {required final int id,
      required final String type,
      required final StateChangeEvent event}) = _$_StateChangeDto;

  factory _StateChangeDto.fromJson(Map<String, dynamic> json) =
      _$_StateChangeDto.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  StateChangeEvent get event => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StateChangeDtoCopyWith<_$_StateChangeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

StateChangeEvent _$StateChangeEventFromJson(Map<String, dynamic> json) {
  return _StateChangeEvent.fromJson(json);
}

/// @nodoc
mixin _$StateChangeEvent {
  String get eventType => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;
  String get origin => throw _privateConstructorUsedError;
  DateTime get timeFired => throw _privateConstructorUsedError;
  Context get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateChangeEventCopyWith<StateChangeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateChangeEventCopyWith<$Res> {
  factory $StateChangeEventCopyWith(
          StateChangeEvent value, $Res Function(StateChangeEvent) then) =
      _$StateChangeEventCopyWithImpl<$Res>;
  $Res call(
      {String eventType,
      Data data,
      String origin,
      DateTime timeFired,
      Context context});

  $DataCopyWith<$Res> get data;
  $ContextCopyWith<$Res> get context;
}

/// @nodoc
class _$StateChangeEventCopyWithImpl<$Res>
    implements $StateChangeEventCopyWith<$Res> {
  _$StateChangeEventCopyWithImpl(this._value, this._then);

  final StateChangeEvent _value;
  // ignore: unused_field
  final $Res Function(StateChangeEvent) _then;

  @override
  $Res call({
    Object? eventType = freezed,
    Object? data = freezed,
    Object? origin = freezed,
    Object? timeFired = freezed,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      eventType: eventType == freezed
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      timeFired: timeFired == freezed
          ? _value.timeFired
          : timeFired // ignore: cast_nullable_to_non_nullable
              as DateTime,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
    ));
  }

  @override
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  $ContextCopyWith<$Res> get context {
    return $ContextCopyWith<$Res>(_value.context, (value) {
      return _then(_value.copyWith(context: value));
    });
  }
}

/// @nodoc
abstract class _$$_StateChangeEventCopyWith<$Res>
    implements $StateChangeEventCopyWith<$Res> {
  factory _$$_StateChangeEventCopyWith(
          _$_StateChangeEvent value, $Res Function(_$_StateChangeEvent) then) =
      __$$_StateChangeEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {String eventType,
      Data data,
      String origin,
      DateTime timeFired,
      Context context});

  @override
  $DataCopyWith<$Res> get data;
  @override
  $ContextCopyWith<$Res> get context;
}

/// @nodoc
class __$$_StateChangeEventCopyWithImpl<$Res>
    extends _$StateChangeEventCopyWithImpl<$Res>
    implements _$$_StateChangeEventCopyWith<$Res> {
  __$$_StateChangeEventCopyWithImpl(
      _$_StateChangeEvent _value, $Res Function(_$_StateChangeEvent) _then)
      : super(_value, (v) => _then(v as _$_StateChangeEvent));

  @override
  _$_StateChangeEvent get _value => super._value as _$_StateChangeEvent;

  @override
  $Res call({
    Object? eventType = freezed,
    Object? data = freezed,
    Object? origin = freezed,
    Object? timeFired = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_StateChangeEvent(
      eventType: eventType == freezed
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      timeFired: timeFired == freezed
          ? _value.timeFired
          : timeFired // ignore: cast_nullable_to_non_nullable
              as DateTime,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StateChangeEvent implements _StateChangeEvent {
  const _$_StateChangeEvent(
      {required this.eventType,
      required this.data,
      required this.origin,
      required this.timeFired,
      required this.context});

  factory _$_StateChangeEvent.fromJson(Map<String, dynamic> json) =>
      _$$_StateChangeEventFromJson(json);

  @override
  final String eventType;
  @override
  final Data data;
  @override
  final String origin;
  @override
  final DateTime timeFired;
  @override
  final Context context;

  @override
  String toString() {
    return 'StateChangeEvent(eventType: $eventType, data: $data, origin: $origin, timeFired: $timeFired, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateChangeEvent &&
            const DeepCollectionEquality().equals(other.eventType, eventType) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality().equals(other.timeFired, timeFired) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eventType),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(timeFired),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_StateChangeEventCopyWith<_$_StateChangeEvent> get copyWith =>
      __$$_StateChangeEventCopyWithImpl<_$_StateChangeEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateChangeEventToJson(this);
  }
}

abstract class _StateChangeEvent implements StateChangeEvent {
  const factory _StateChangeEvent(
      {required final String eventType,
      required final Data data,
      required final String origin,
      required final DateTime timeFired,
      required final Context context}) = _$_StateChangeEvent;

  factory _StateChangeEvent.fromJson(Map<String, dynamic> json) =
      _$_StateChangeEvent.fromJson;

  @override
  String get eventType => throw _privateConstructorUsedError;
  @override
  Data get data => throw _privateConstructorUsedError;
  @override
  String get origin => throw _privateConstructorUsedError;
  @override
  DateTime get timeFired => throw _privateConstructorUsedError;
  @override
  Context get context => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StateChangeEventCopyWith<_$_StateChangeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get entityId => throw _privateConstructorUsedError;
  EntityState get oldState => throw _privateConstructorUsedError;
  EntityState get newState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({String entityId, EntityState oldState, EntityState newState});

  $EntityStateCopyWith<$Res> get oldState;
  $EntityStateCopyWith<$Res> get newState;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? entityId = freezed,
    Object? oldState = freezed,
    Object? newState = freezed,
  }) {
    return _then(_value.copyWith(
      entityId: entityId == freezed
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      oldState: oldState == freezed
          ? _value.oldState
          : oldState // ignore: cast_nullable_to_non_nullable
              as EntityState,
      newState: newState == freezed
          ? _value.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as EntityState,
    ));
  }

  @override
  $EntityStateCopyWith<$Res> get oldState {
    return $EntityStateCopyWith<$Res>(_value.oldState, (value) {
      return _then(_value.copyWith(oldState: value));
    });
  }

  @override
  $EntityStateCopyWith<$Res> get newState {
    return $EntityStateCopyWith<$Res>(_value.newState, (value) {
      return _then(_value.copyWith(newState: value));
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  $Res call({String entityId, EntityState oldState, EntityState newState});

  @override
  $EntityStateCopyWith<$Res> get oldState;
  @override
  $EntityStateCopyWith<$Res> get newState;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, (v) => _then(v as _$_Data));

  @override
  _$_Data get _value => super._value as _$_Data;

  @override
  $Res call({
    Object? entityId = freezed,
    Object? oldState = freezed,
    Object? newState = freezed,
  }) {
    return _then(_$_Data(
      entityId: entityId == freezed
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      oldState: oldState == freezed
          ? _value.oldState
          : oldState // ignore: cast_nullable_to_non_nullable
              as EntityState,
      newState: newState == freezed
          ? _value.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as EntityState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required this.entityId, required this.oldState, required this.newState});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String entityId;
  @override
  final EntityState oldState;
  @override
  final EntityState newState;

  @override
  String toString() {
    return 'Data(entityId: $entityId, oldState: $oldState, newState: $newState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other.entityId, entityId) &&
            const DeepCollectionEquality().equals(other.oldState, oldState) &&
            const DeepCollectionEquality().equals(other.newState, newState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(entityId),
      const DeepCollectionEquality().hash(oldState),
      const DeepCollectionEquality().hash(newState));

  @JsonKey(ignore: true)
  @override
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final String entityId,
      required final EntityState oldState,
      required final EntityState newState}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String get entityId => throw _privateConstructorUsedError;
  @override
  EntityState get oldState => throw _privateConstructorUsedError;
  @override
  EntityState get newState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
