// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_registries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityRegistriesDto _$EntityRegistriesDtoFromJson(Map<String, dynamic> json) {
  return _EntityRegistriesDto.fromJson(json);
}

/// @nodoc
mixin _$EntityRegistriesDto {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  List<EntityRegistry> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityRegistriesDtoCopyWith<EntityRegistriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityRegistriesDtoCopyWith<$Res> {
  factory $EntityRegistriesDtoCopyWith(
          EntityRegistriesDto value, $Res Function(EntityRegistriesDto) then) =
      _$EntityRegistriesDtoCopyWithImpl<$Res>;
  $Res call({int id, String type, bool success, List<EntityRegistry> result});
}

/// @nodoc
class _$EntityRegistriesDtoCopyWithImpl<$Res>
    implements $EntityRegistriesDtoCopyWith<$Res> {
  _$EntityRegistriesDtoCopyWithImpl(this._value, this._then);

  final EntityRegistriesDto _value;
  // ignore: unused_field
  final $Res Function(EntityRegistriesDto) _then;

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
              as List<EntityRegistry>,
    ));
  }
}

/// @nodoc
abstract class _$$_EntityRegistriesDtoCopyWith<$Res>
    implements $EntityRegistriesDtoCopyWith<$Res> {
  factory _$$_EntityRegistriesDtoCopyWith(_$_EntityRegistriesDto value,
          $Res Function(_$_EntityRegistriesDto) then) =
      __$$_EntityRegistriesDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String type, bool success, List<EntityRegistry> result});
}

/// @nodoc
class __$$_EntityRegistriesDtoCopyWithImpl<$Res>
    extends _$EntityRegistriesDtoCopyWithImpl<$Res>
    implements _$$_EntityRegistriesDtoCopyWith<$Res> {
  __$$_EntityRegistriesDtoCopyWithImpl(_$_EntityRegistriesDto _value,
      $Res Function(_$_EntityRegistriesDto) _then)
      : super(_value, (v) => _then(v as _$_EntityRegistriesDto));

  @override
  _$_EntityRegistriesDto get _value => super._value as _$_EntityRegistriesDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_EntityRegistriesDto(
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
              as List<EntityRegistry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityRegistriesDto implements _EntityRegistriesDto {
  const _$_EntityRegistriesDto(
      {required this.id,
      required this.type,
      required this.success,
      required final List<EntityRegistry> result})
      : _result = result;

  factory _$_EntityRegistriesDto.fromJson(Map<String, dynamic> json) =>
      _$$_EntityRegistriesDtoFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final bool success;
  final List<EntityRegistry> _result;
  @override
  List<EntityRegistry> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'EntityRegistriesDto(id: $id, type: $type, success: $success, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityRegistriesDto &&
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
  _$$_EntityRegistriesDtoCopyWith<_$_EntityRegistriesDto> get copyWith =>
      __$$_EntityRegistriesDtoCopyWithImpl<_$_EntityRegistriesDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityRegistriesDtoToJson(this);
  }
}

abstract class _EntityRegistriesDto implements EntityRegistriesDto {
  const factory _EntityRegistriesDto(
      {required final int id,
      required final String type,
      required final bool success,
      required final List<EntityRegistry> result}) = _$_EntityRegistriesDto;

  factory _EntityRegistriesDto.fromJson(Map<String, dynamic> json) =
      _$_EntityRegistriesDto.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  List<EntityRegistry> get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EntityRegistriesDtoCopyWith<_$_EntityRegistriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

EntityRegistry _$EntityRegistryFromJson(Map<String, dynamic> json) {
  return _EntityRegistry.fromJson(json);
}

/// @nodoc
mixin _$EntityRegistry {
  String? get areaId => throw _privateConstructorUsedError;
  String? get configEntryId => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String? get disabledBy => throw _privateConstructorUsedError;
  String? get entityCategory => throw _privateConstructorUsedError;
  String get entityId => throw _privateConstructorUsedError;
  String? get hiddenBy => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityRegistryCopyWith<EntityRegistry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityRegistryCopyWith<$Res> {
  factory $EntityRegistryCopyWith(
          EntityRegistry value, $Res Function(EntityRegistry) then) =
      _$EntityRegistryCopyWithImpl<$Res>;
  $Res call(
      {String? areaId,
      String? configEntryId,
      String? deviceId,
      String? disabledBy,
      String? entityCategory,
      String entityId,
      String? hiddenBy,
      String? icon,
      String? name,
      String? platform});
}

/// @nodoc
class _$EntityRegistryCopyWithImpl<$Res>
    implements $EntityRegistryCopyWith<$Res> {
  _$EntityRegistryCopyWithImpl(this._value, this._then);

  final EntityRegistry _value;
  // ignore: unused_field
  final $Res Function(EntityRegistry) _then;

  @override
  $Res call({
    Object? areaId = freezed,
    Object? configEntryId = freezed,
    Object? deviceId = freezed,
    Object? disabledBy = freezed,
    Object? entityCategory = freezed,
    Object? entityId = freezed,
    Object? hiddenBy = freezed,
    Object? icon = freezed,
    Object? name = freezed,
    Object? platform = freezed,
  }) {
    return _then(_value.copyWith(
      areaId: areaId == freezed
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String?,
      configEntryId: configEntryId == freezed
          ? _value.configEntryId
          : configEntryId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledBy: disabledBy == freezed
          ? _value.disabledBy
          : disabledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      entityCategory: entityCategory == freezed
          ? _value.entityCategory
          : entityCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      entityId: entityId == freezed
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      hiddenBy: hiddenBy == freezed
          ? _value.hiddenBy
          : hiddenBy // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_EntityRegistryCopyWith<$Res>
    implements $EntityRegistryCopyWith<$Res> {
  factory _$$_EntityRegistryCopyWith(
          _$_EntityRegistry value, $Res Function(_$_EntityRegistry) then) =
      __$$_EntityRegistryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? areaId,
      String? configEntryId,
      String? deviceId,
      String? disabledBy,
      String? entityCategory,
      String entityId,
      String? hiddenBy,
      String? icon,
      String? name,
      String? platform});
}

/// @nodoc
class __$$_EntityRegistryCopyWithImpl<$Res>
    extends _$EntityRegistryCopyWithImpl<$Res>
    implements _$$_EntityRegistryCopyWith<$Res> {
  __$$_EntityRegistryCopyWithImpl(
      _$_EntityRegistry _value, $Res Function(_$_EntityRegistry) _then)
      : super(_value, (v) => _then(v as _$_EntityRegistry));

  @override
  _$_EntityRegistry get _value => super._value as _$_EntityRegistry;

  @override
  $Res call({
    Object? areaId = freezed,
    Object? configEntryId = freezed,
    Object? deviceId = freezed,
    Object? disabledBy = freezed,
    Object? entityCategory = freezed,
    Object? entityId = freezed,
    Object? hiddenBy = freezed,
    Object? icon = freezed,
    Object? name = freezed,
    Object? platform = freezed,
  }) {
    return _then(_$_EntityRegistry(
      areaId: areaId == freezed
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String?,
      configEntryId: configEntryId == freezed
          ? _value.configEntryId
          : configEntryId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledBy: disabledBy == freezed
          ? _value.disabledBy
          : disabledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      entityCategory: entityCategory == freezed
          ? _value.entityCategory
          : entityCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      entityId: entityId == freezed
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      hiddenBy: hiddenBy == freezed
          ? _value.hiddenBy
          : hiddenBy // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityRegistry implements _EntityRegistry {
  const _$_EntityRegistry(
      {this.areaId,
      this.configEntryId,
      this.deviceId,
      this.disabledBy,
      this.entityCategory,
      required this.entityId,
      this.hiddenBy,
      this.icon,
      this.name,
      this.platform});

  factory _$_EntityRegistry.fromJson(Map<String, dynamic> json) =>
      _$$_EntityRegistryFromJson(json);

  @override
  final String? areaId;
  @override
  final String? configEntryId;
  @override
  final String? deviceId;
  @override
  final String? disabledBy;
  @override
  final String? entityCategory;
  @override
  final String entityId;
  @override
  final String? hiddenBy;
  @override
  final String? icon;
  @override
  final String? name;
  @override
  final String? platform;

  @override
  String toString() {
    return 'EntityRegistry(areaId: $areaId, configEntryId: $configEntryId, deviceId: $deviceId, disabledBy: $disabledBy, entityCategory: $entityCategory, entityId: $entityId, hiddenBy: $hiddenBy, icon: $icon, name: $name, platform: $platform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityRegistry &&
            const DeepCollectionEquality().equals(other.areaId, areaId) &&
            const DeepCollectionEquality()
                .equals(other.configEntryId, configEntryId) &&
            const DeepCollectionEquality().equals(other.deviceId, deviceId) &&
            const DeepCollectionEquality()
                .equals(other.disabledBy, disabledBy) &&
            const DeepCollectionEquality()
                .equals(other.entityCategory, entityCategory) &&
            const DeepCollectionEquality().equals(other.entityId, entityId) &&
            const DeepCollectionEquality().equals(other.hiddenBy, hiddenBy) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.platform, platform));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(areaId),
      const DeepCollectionEquality().hash(configEntryId),
      const DeepCollectionEquality().hash(deviceId),
      const DeepCollectionEquality().hash(disabledBy),
      const DeepCollectionEquality().hash(entityCategory),
      const DeepCollectionEquality().hash(entityId),
      const DeepCollectionEquality().hash(hiddenBy),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(platform));

  @JsonKey(ignore: true)
  @override
  _$$_EntityRegistryCopyWith<_$_EntityRegistry> get copyWith =>
      __$$_EntityRegistryCopyWithImpl<_$_EntityRegistry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityRegistryToJson(this);
  }
}

abstract class _EntityRegistry implements EntityRegistry {
  const factory _EntityRegistry(
      {final String? areaId,
      final String? configEntryId,
      final String? deviceId,
      final String? disabledBy,
      final String? entityCategory,
      required final String entityId,
      final String? hiddenBy,
      final String? icon,
      final String? name,
      final String? platform}) = _$_EntityRegistry;

  factory _EntityRegistry.fromJson(Map<String, dynamic> json) =
      _$_EntityRegistry.fromJson;

  @override
  String? get areaId => throw _privateConstructorUsedError;
  @override
  String? get configEntryId => throw _privateConstructorUsedError;
  @override
  String? get deviceId => throw _privateConstructorUsedError;
  @override
  String? get disabledBy => throw _privateConstructorUsedError;
  @override
  String? get entityCategory => throw _privateConstructorUsedError;
  @override
  String get entityId => throw _privateConstructorUsedError;
  @override
  String? get hiddenBy => throw _privateConstructorUsedError;
  @override
  String? get icon => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get platform => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EntityRegistryCopyWith<_$_EntityRegistry> get copyWith =>
      throw _privateConstructorUsedError;
}
