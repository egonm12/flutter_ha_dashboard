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
  Event get event => throw _privateConstructorUsedError;

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
  $Res call({int id, String type, Event event});

  $EventCopyWith<$Res> get event;
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
              as Event,
    ));
  }

  @override
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
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
  $Res call({int id, String type, Event event});

  @override
  $EventCopyWith<$Res> get event;
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
              as Event,
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
  final Event event;

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
      required final Event event}) = _$_StateChangeDto;

  factory _StateChangeDto.fromJson(Map<String, dynamic> json) =
      _$_StateChangeDto.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  Event get event => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StateChangeDtoCopyWith<_$_StateChangeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  String get eventType => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;
  String get origin => throw _privateConstructorUsedError;
  DateTime get timeFired => throw _privateConstructorUsedError;
  Context get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res>;
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
class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  final Event _value;
  // ignore: unused_field
  final $Res Function(Event) _then;

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
abstract class _$$_EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$_EventCopyWith(_$_Event value, $Res Function(_$_Event) then) =
      __$$_EventCopyWithImpl<$Res>;
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
class __$$_EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements _$$_EventCopyWith<$Res> {
  __$$_EventCopyWithImpl(_$_Event _value, $Res Function(_$_Event) _then)
      : super(_value, (v) => _then(v as _$_Event));

  @override
  _$_Event get _value => super._value as _$_Event;

  @override
  $Res call({
    Object? eventType = freezed,
    Object? data = freezed,
    Object? origin = freezed,
    Object? timeFired = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_Event(
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
class _$_Event implements _Event {
  const _$_Event(
      {required this.eventType,
      required this.data,
      required this.origin,
      required this.timeFired,
      required this.context});

  factory _$_Event.fromJson(Map<String, dynamic> json) =>
      _$$_EventFromJson(json);

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
    return 'Event(eventType: $eventType, data: $data, origin: $origin, timeFired: $timeFired, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Event &&
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
  _$$_EventCopyWith<_$_Event> get copyWith =>
      __$$_EventCopyWithImpl<_$_Event>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventToJson(this);
  }
}

abstract class _Event implements Event {
  const factory _Event(
      {required final String eventType,
      required final Data data,
      required final String origin,
      required final DateTime timeFired,
      required final Context context}) = _$_Event;

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

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
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}

Context _$ContextFromJson(Map<String, dynamic> json) {
  return _Context.fromJson(json);
}

/// @nodoc
mixin _$Context {
  String get id => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContextCopyWith<Context> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextCopyWith<$Res> {
  factory $ContextCopyWith(Context value, $Res Function(Context) then) =
      _$ContextCopyWithImpl<$Res>;
  $Res call({String id, String? parentId, String? userId});
}

/// @nodoc
class _$ContextCopyWithImpl<$Res> implements $ContextCopyWith<$Res> {
  _$ContextCopyWithImpl(this._value, this._then);

  final Context _value;
  // ignore: unused_field
  final $Res Function(Context) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ContextCopyWith<$Res> implements $ContextCopyWith<$Res> {
  factory _$$_ContextCopyWith(
          _$_Context value, $Res Function(_$_Context) then) =
      __$$_ContextCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? parentId, String? userId});
}

/// @nodoc
class __$$_ContextCopyWithImpl<$Res> extends _$ContextCopyWithImpl<$Res>
    implements _$$_ContextCopyWith<$Res> {
  __$$_ContextCopyWithImpl(_$_Context _value, $Res Function(_$_Context) _then)
      : super(_value, (v) => _then(v as _$_Context));

  @override
  _$_Context get _value => super._value as _$_Context;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_Context(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Context implements _Context {
  const _$_Context({required this.id, this.parentId, this.userId});

  factory _$_Context.fromJson(Map<String, dynamic> json) =>
      _$$_ContextFromJson(json);

  @override
  final String id;
  @override
  final String? parentId;
  @override
  final String? userId;

  @override
  String toString() {
    return 'Context(id: $id, parentId: $parentId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Context &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_ContextCopyWith<_$_Context> get copyWith =>
      __$$_ContextCopyWithImpl<_$_Context>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContextToJson(this);
  }
}

abstract class _Context implements Context {
  const factory _Context(
      {required final String id,
      final String? parentId,
      final String? userId}) = _$_Context;

  factory _Context.fromJson(Map<String, dynamic> json) = _$_Context.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get parentId => throw _privateConstructorUsedError;
  @override
  String? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ContextCopyWith<_$_Context> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get entityId => throw _privateConstructorUsedError;
  State get oldState => throw _privateConstructorUsedError;
  State get newState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({String entityId, State oldState, State newState});

  $StateCopyWith<$Res> get oldState;
  $StateCopyWith<$Res> get newState;
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
              as State,
      newState: newState == freezed
          ? _value.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as State,
    ));
  }

  @override
  $StateCopyWith<$Res> get oldState {
    return $StateCopyWith<$Res>(_value.oldState, (value) {
      return _then(_value.copyWith(oldState: value));
    });
  }

  @override
  $StateCopyWith<$Res> get newState {
    return $StateCopyWith<$Res>(_value.newState, (value) {
      return _then(_value.copyWith(newState: value));
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  $Res call({String entityId, State oldState, State newState});

  @override
  $StateCopyWith<$Res> get oldState;
  @override
  $StateCopyWith<$Res> get newState;
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
              as State,
      newState: newState == freezed
          ? _value.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as State,
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
  final State oldState;
  @override
  final State newState;

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
      required final State oldState,
      required final State newState}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String get entityId => throw _privateConstructorUsedError;
  @override
  State get oldState => throw _privateConstructorUsedError;
  @override
  State get newState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

State _$StateFromJson(Map<String, dynamic> json) {
  return _State.fromJson(json);
}

/// @nodoc
mixin _$State {
  String get entityId => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  Map<String, dynamic> get attributes => throw _privateConstructorUsedError;
  DateTime get lastChanged => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  Context get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateCopyWith<State> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCopyWith<$Res> {
  factory $StateCopyWith(State value, $Res Function(State) then) =
      _$StateCopyWithImpl<$Res>;
  $Res call(
      {String entityId,
      String state,
      Map<String, dynamic> attributes,
      DateTime lastChanged,
      DateTime lastUpdated,
      Context context});

  $ContextCopyWith<$Res> get context;
}

/// @nodoc
class _$StateCopyWithImpl<$Res> implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(this._value, this._then);

  final State _value;
  // ignore: unused_field
  final $Res Function(State) _then;

  @override
  $Res call({
    Object? entityId = freezed,
    Object? state = freezed,
    Object? attributes = freezed,
    Object? lastChanged = freezed,
    Object? lastUpdated = freezed,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      entityId: entityId == freezed
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastChanged: lastChanged == freezed
          ? _value.lastChanged
          : lastChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
    ));
  }

  @override
  $ContextCopyWith<$Res> get context {
    return $ContextCopyWith<$Res>(_value.context, (value) {
      return _then(_value.copyWith(context: value));
    });
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res> implements $StateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String entityId,
      String state,
      Map<String, dynamic> attributes,
      DateTime lastChanged,
      DateTime lastUpdated,
      Context context});

  @override
  $ContextCopyWith<$Res> get context;
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res> extends _$StateCopyWithImpl<$Res>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, (v) => _then(v as _$_State));

  @override
  _$_State get _value => super._value as _$_State;

  @override
  $Res call({
    Object? entityId = freezed,
    Object? state = freezed,
    Object? attributes = freezed,
    Object? lastChanged = freezed,
    Object? lastUpdated = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_State(
      entityId: entityId == freezed
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastChanged: lastChanged == freezed
          ? _value.lastChanged
          : lastChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
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
class _$_State implements _State {
  const _$_State(
      {required this.entityId,
      required this.state,
      required final Map<String, dynamic> attributes,
      required this.lastChanged,
      required this.lastUpdated,
      required this.context})
      : _attributes = attributes;

  factory _$_State.fromJson(Map<String, dynamic> json) =>
      _$$_StateFromJson(json);

  @override
  final String entityId;
  @override
  final String state;
  final Map<String, dynamic> _attributes;
  @override
  Map<String, dynamic> get attributes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attributes);
  }

  @override
  final DateTime lastChanged;
  @override
  final DateTime lastUpdated;
  @override
  final Context context;

  @override
  String toString() {
    return 'State(entityId: $entityId, state: $state, attributes: $attributes, lastChanged: $lastChanged, lastUpdated: $lastUpdated, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            const DeepCollectionEquality().equals(other.entityId, entityId) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality()
                .equals(other.lastChanged, lastChanged) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(entityId),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(_attributes),
      const DeepCollectionEquality().hash(lastChanged),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateToJson(this);
  }
}

abstract class _State implements State {
  const factory _State(
      {required final String entityId,
      required final String state,
      required final Map<String, dynamic> attributes,
      required final DateTime lastChanged,
      required final DateTime lastUpdated,
      required final Context context}) = _$_State;

  factory _State.fromJson(Map<String, dynamic> json) = _$_State.fromJson;

  @override
  String get entityId => throw _privateConstructorUsedError;
  @override
  String get state => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get attributes => throw _privateConstructorUsedError;
  @override
  DateTime get lastChanged => throw _privateConstructorUsedError;
  @override
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  Context get context => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
