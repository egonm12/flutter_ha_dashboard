// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityStatesDTO _$EntityStatesDTOFromJson(Map<String, dynamic> json) {
  return _EntityStatesDTO.fromJson(json);
}

/// @nodoc
mixin _$EntityStatesDTO {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  List<EntityState> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityStatesDTOCopyWith<EntityStatesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityStatesDTOCopyWith<$Res> {
  factory $EntityStatesDTOCopyWith(
          EntityStatesDTO value, $Res Function(EntityStatesDTO) then) =
      _$EntityStatesDTOCopyWithImpl<$Res>;
  $Res call({int id, String type, bool success, List<EntityState> result});
}

/// @nodoc
class _$EntityStatesDTOCopyWithImpl<$Res>
    implements $EntityStatesDTOCopyWith<$Res> {
  _$EntityStatesDTOCopyWithImpl(this._value, this._then);

  final EntityStatesDTO _value;
  // ignore: unused_field
  final $Res Function(EntityStatesDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? success = freezed,
    Object? result = freezed,
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
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<EntityState>,
    ));
  }
}

/// @nodoc
abstract class _$$_EntityStatesDTOCopyWith<$Res>
    implements $EntityStatesDTOCopyWith<$Res> {
  factory _$$_EntityStatesDTOCopyWith(
          _$_EntityStatesDTO value, $Res Function(_$_EntityStatesDTO) then) =
      __$$_EntityStatesDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String type, bool success, List<EntityState> result});
}

/// @nodoc
class __$$_EntityStatesDTOCopyWithImpl<$Res>
    extends _$EntityStatesDTOCopyWithImpl<$Res>
    implements _$$_EntityStatesDTOCopyWith<$Res> {
  __$$_EntityStatesDTOCopyWithImpl(
      _$_EntityStatesDTO _value, $Res Function(_$_EntityStatesDTO) _then)
      : super(_value, (v) => _then(v as _$_EntityStatesDTO));

  @override
  _$_EntityStatesDTO get _value => super._value as _$_EntityStatesDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_EntityStatesDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<EntityState>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityStatesDTO implements _EntityStatesDTO {
  const _$_EntityStatesDTO(
      {required this.id,
      required this.type,
      required this.success,
      required final List<EntityState> result})
      : _result = result;

  factory _$_EntityStatesDTO.fromJson(Map<String, dynamic> json) =>
      _$$_EntityStatesDTOFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final bool success;
  final List<EntityState> _result;
  @override
  List<EntityState> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'EntityStatesDTO(id: $id, type: $type, success: $success, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityStatesDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  _$$_EntityStatesDTOCopyWith<_$_EntityStatesDTO> get copyWith =>
      __$$_EntityStatesDTOCopyWithImpl<_$_EntityStatesDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityStatesDTOToJson(this);
  }
}

abstract class _EntityStatesDTO implements EntityStatesDTO {
  const factory _EntityStatesDTO(
      {required final int id,
      required final String type,
      required final bool success,
      required final List<EntityState> result}) = _$_EntityStatesDTO;

  factory _EntityStatesDTO.fromJson(Map<String, dynamic> json) =
      _$_EntityStatesDTO.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  List<EntityState> get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EntityStatesDTOCopyWith<_$_EntityStatesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

EntityState _$EntityStateFromJson(Map<String, dynamic> json) {
  return _EntityState.fromJson(json);
}

/// @nodoc
mixin _$EntityState {
  String get entityId => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  Map<String, dynamic> get attributes => throw _privateConstructorUsedError;
  DateTime get lastChanged => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  Context get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityStateCopyWith<EntityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityStateCopyWith<$Res> {
  factory $EntityStateCopyWith(
          EntityState value, $Res Function(EntityState) then) =
      _$EntityStateCopyWithImpl<$Res>;
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
class _$EntityStateCopyWithImpl<$Res> implements $EntityStateCopyWith<$Res> {
  _$EntityStateCopyWithImpl(this._value, this._then);

  final EntityState _value;
  // ignore: unused_field
  final $Res Function(EntityState) _then;

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
abstract class _$$_EntityStateCopyWith<$Res>
    implements $EntityStateCopyWith<$Res> {
  factory _$$_EntityStateCopyWith(
          _$_EntityState value, $Res Function(_$_EntityState) then) =
      __$$_EntityStateCopyWithImpl<$Res>;
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
class __$$_EntityStateCopyWithImpl<$Res> extends _$EntityStateCopyWithImpl<$Res>
    implements _$$_EntityStateCopyWith<$Res> {
  __$$_EntityStateCopyWithImpl(
      _$_EntityState _value, $Res Function(_$_EntityState) _then)
      : super(_value, (v) => _then(v as _$_EntityState));

  @override
  _$_EntityState get _value => super._value as _$_EntityState;

  @override
  $Res call({
    Object? entityId = freezed,
    Object? state = freezed,
    Object? attributes = freezed,
    Object? lastChanged = freezed,
    Object? lastUpdated = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_EntityState(
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
class _$_EntityState implements _EntityState {
  const _$_EntityState(
      {required this.entityId,
      required this.state,
      required final Map<String, dynamic> attributes,
      required this.lastChanged,
      required this.lastUpdated,
      required this.context})
      : _attributes = attributes;

  factory _$_EntityState.fromJson(Map<String, dynamic> json) =>
      _$$_EntityStateFromJson(json);

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
    return 'EntityState(entityId: $entityId, state: $state, attributes: $attributes, lastChanged: $lastChanged, lastUpdated: $lastUpdated, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityState &&
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
  _$$_EntityStateCopyWith<_$_EntityState> get copyWith =>
      __$$_EntityStateCopyWithImpl<_$_EntityState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityStateToJson(this);
  }
}

abstract class _EntityState implements EntityState {
  const factory _EntityState(
      {required final String entityId,
      required final String state,
      required final Map<String, dynamic> attributes,
      required final DateTime lastChanged,
      required final DateTime lastUpdated,
      required final Context context}) = _$_EntityState;

  factory _EntityState.fromJson(Map<String, dynamic> json) =
      _$_EntityState.fromJson;

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
  _$$_EntityStateCopyWith<_$_EntityState> get copyWith =>
      throw _privateConstructorUsedError;
}
