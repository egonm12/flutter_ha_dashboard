// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_registries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceRegistriesDTO _$DeviceRegistriesDTOFromJson(Map<String, dynamic> json) {
  return _DeviceRegistriesDTO.fromJson(json);
}

/// @nodoc
mixin _$DeviceRegistriesDTO {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  List<DeviceRegistry> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceRegistriesDTOCopyWith<DeviceRegistriesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceRegistriesDTOCopyWith<$Res> {
  factory $DeviceRegistriesDTOCopyWith(
          DeviceRegistriesDTO value, $Res Function(DeviceRegistriesDTO) then) =
      _$DeviceRegistriesDTOCopyWithImpl<$Res>;
  $Res call({int id, String type, bool success, List<DeviceRegistry> result});
}

/// @nodoc
class _$DeviceRegistriesDTOCopyWithImpl<$Res>
    implements $DeviceRegistriesDTOCopyWith<$Res> {
  _$DeviceRegistriesDTOCopyWithImpl(this._value, this._then);

  final DeviceRegistriesDTO _value;
  // ignore: unused_field
  final $Res Function(DeviceRegistriesDTO) _then;

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
              as List<DeviceRegistry>,
    ));
  }
}

/// @nodoc
abstract class _$$_DeviceRegistriesDTOCopyWith<$Res>
    implements $DeviceRegistriesDTOCopyWith<$Res> {
  factory _$$_DeviceRegistriesDTOCopyWith(_$_DeviceRegistriesDTO value,
          $Res Function(_$_DeviceRegistriesDTO) then) =
      __$$_DeviceRegistriesDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String type, bool success, List<DeviceRegistry> result});
}

/// @nodoc
class __$$_DeviceRegistriesDTOCopyWithImpl<$Res>
    extends _$DeviceRegistriesDTOCopyWithImpl<$Res>
    implements _$$_DeviceRegistriesDTOCopyWith<$Res> {
  __$$_DeviceRegistriesDTOCopyWithImpl(_$_DeviceRegistriesDTO _value,
      $Res Function(_$_DeviceRegistriesDTO) _then)
      : super(_value, (v) => _then(v as _$_DeviceRegistriesDTO));

  @override
  _$_DeviceRegistriesDTO get _value => super._value as _$_DeviceRegistriesDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_DeviceRegistriesDTO(
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
              as List<DeviceRegistry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceRegistriesDTO implements _DeviceRegistriesDTO {
  const _$_DeviceRegistriesDTO(
      {required this.id,
      required this.type,
      required this.success,
      required final List<DeviceRegistry> result})
      : _result = result;

  factory _$_DeviceRegistriesDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceRegistriesDTOFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final bool success;
  final List<DeviceRegistry> _result;
  @override
  List<DeviceRegistry> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'DeviceRegistriesDTO(id: $id, type: $type, success: $success, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceRegistriesDTO &&
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
  _$$_DeviceRegistriesDTOCopyWith<_$_DeviceRegistriesDTO> get copyWith =>
      __$$_DeviceRegistriesDTOCopyWithImpl<_$_DeviceRegistriesDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceRegistriesDTOToJson(this);
  }
}

abstract class _DeviceRegistriesDTO implements DeviceRegistriesDTO {
  const factory _DeviceRegistriesDTO(
      {required final int id,
      required final String type,
      required final bool success,
      required final List<DeviceRegistry> result}) = _$_DeviceRegistriesDTO;

  factory _DeviceRegistriesDTO.fromJson(Map<String, dynamic> json) =
      _$_DeviceRegistriesDTO.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  List<DeviceRegistry> get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceRegistriesDTOCopyWith<_$_DeviceRegistriesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceRegistry _$DeviceRegistryFromJson(Map<String, dynamic> json) {
  return _DeviceRegistry.fromJson(json);
}

/// @nodoc
mixin _$DeviceRegistry {
  String? get areaId => throw _privateConstructorUsedError;
  String? get configurationUrl => throw _privateConstructorUsedError;
  List<String>? get configEntries => throw _privateConstructorUsedError;
  List<List<String>> get connections => throw _privateConstructorUsedError;
  String? get disabledBy => throw _privateConstructorUsedError;
  String? get entryType => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError; // ignore: avoid-dynamic
  List<List<dynamic>> get identifiers => throw _privateConstructorUsedError;
  String? get manufacturer => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get nameByUser => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get swVersion => throw _privateConstructorUsedError;
  String? get hwVersion => throw _privateConstructorUsedError;
  String? get viaDeviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceRegistryCopyWith<DeviceRegistry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceRegistryCopyWith<$Res> {
  factory $DeviceRegistryCopyWith(
          DeviceRegistry value, $Res Function(DeviceRegistry) then) =
      _$DeviceRegistryCopyWithImpl<$Res>;
  $Res call(
      {String? areaId,
      String? configurationUrl,
      List<String>? configEntries,
      List<List<String>> connections,
      String? disabledBy,
      String? entryType,
      String id,
      List<List<dynamic>> identifiers,
      String? manufacturer,
      String? model,
      String? nameByUser,
      String name,
      String? swVersion,
      String? hwVersion,
      String? viaDeviceId});
}

/// @nodoc
class _$DeviceRegistryCopyWithImpl<$Res>
    implements $DeviceRegistryCopyWith<$Res> {
  _$DeviceRegistryCopyWithImpl(this._value, this._then);

  final DeviceRegistry _value;
  // ignore: unused_field
  final $Res Function(DeviceRegistry) _then;

  @override
  $Res call({
    Object? areaId = freezed,
    Object? configurationUrl = freezed,
    Object? configEntries = freezed,
    Object? connections = freezed,
    Object? disabledBy = freezed,
    Object? entryType = freezed,
    Object? id = freezed,
    Object? identifiers = freezed,
    Object? manufacturer = freezed,
    Object? model = freezed,
    Object? nameByUser = freezed,
    Object? name = freezed,
    Object? swVersion = freezed,
    Object? hwVersion = freezed,
    Object? viaDeviceId = freezed,
  }) {
    return _then(_value.copyWith(
      areaId: areaId == freezed
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String?,
      configurationUrl: configurationUrl == freezed
          ? _value.configurationUrl
          : configurationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      configEntries: configEntries == freezed
          ? _value.configEntries
          : configEntries // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      connections: connections == freezed
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      disabledBy: disabledBy == freezed
          ? _value.disabledBy
          : disabledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      entryType: entryType == freezed
          ? _value.entryType
          : entryType // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      identifiers: identifiers == freezed
          ? _value.identifiers
          : identifiers // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      nameByUser: nameByUser == freezed
          ? _value.nameByUser
          : nameByUser // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      swVersion: swVersion == freezed
          ? _value.swVersion
          : swVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      hwVersion: hwVersion == freezed
          ? _value.hwVersion
          : hwVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      viaDeviceId: viaDeviceId == freezed
          ? _value.viaDeviceId
          : viaDeviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DeviceRegistryCopyWith<$Res>
    implements $DeviceRegistryCopyWith<$Res> {
  factory _$$_DeviceRegistryCopyWith(
          _$_DeviceRegistry value, $Res Function(_$_DeviceRegistry) then) =
      __$$_DeviceRegistryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? areaId,
      String? configurationUrl,
      List<String>? configEntries,
      List<List<String>> connections,
      String? disabledBy,
      String? entryType,
      String id,
      List<List<dynamic>> identifiers,
      String? manufacturer,
      String? model,
      String? nameByUser,
      String name,
      String? swVersion,
      String? hwVersion,
      String? viaDeviceId});
}

/// @nodoc
class __$$_DeviceRegistryCopyWithImpl<$Res>
    extends _$DeviceRegistryCopyWithImpl<$Res>
    implements _$$_DeviceRegistryCopyWith<$Res> {
  __$$_DeviceRegistryCopyWithImpl(
      _$_DeviceRegistry _value, $Res Function(_$_DeviceRegistry) _then)
      : super(_value, (v) => _then(v as _$_DeviceRegistry));

  @override
  _$_DeviceRegistry get _value => super._value as _$_DeviceRegistry;

  @override
  $Res call({
    Object? areaId = freezed,
    Object? configurationUrl = freezed,
    Object? configEntries = freezed,
    Object? connections = freezed,
    Object? disabledBy = freezed,
    Object? entryType = freezed,
    Object? id = freezed,
    Object? identifiers = freezed,
    Object? manufacturer = freezed,
    Object? model = freezed,
    Object? nameByUser = freezed,
    Object? name = freezed,
    Object? swVersion = freezed,
    Object? hwVersion = freezed,
    Object? viaDeviceId = freezed,
  }) {
    return _then(_$_DeviceRegistry(
      areaId: areaId == freezed
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String?,
      configurationUrl: configurationUrl == freezed
          ? _value.configurationUrl
          : configurationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      configEntries: configEntries == freezed
          ? _value._configEntries
          : configEntries // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      connections: connections == freezed
          ? _value._connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      disabledBy: disabledBy == freezed
          ? _value.disabledBy
          : disabledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      entryType: entryType == freezed
          ? _value.entryType
          : entryType // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      identifiers: identifiers == freezed
          ? _value._identifiers
          : identifiers // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      nameByUser: nameByUser == freezed
          ? _value.nameByUser
          : nameByUser // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      swVersion: swVersion == freezed
          ? _value.swVersion
          : swVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      hwVersion: hwVersion == freezed
          ? _value.hwVersion
          : hwVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      viaDeviceId: viaDeviceId == freezed
          ? _value.viaDeviceId
          : viaDeviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceRegistry implements _DeviceRegistry {
  const _$_DeviceRegistry(
      {this.areaId,
      this.configurationUrl,
      final List<String>? configEntries,
      required final List<List<String>> connections,
      this.disabledBy,
      this.entryType,
      required this.id,
      required final List<List<dynamic>> identifiers,
      this.manufacturer,
      this.model,
      this.nameByUser,
      required this.name,
      this.swVersion,
      this.hwVersion,
      this.viaDeviceId})
      : _configEntries = configEntries,
        _connections = connections,
        _identifiers = identifiers;

  factory _$_DeviceRegistry.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceRegistryFromJson(json);

  @override
  final String? areaId;
  @override
  final String? configurationUrl;
  final List<String>? _configEntries;
  @override
  List<String>? get configEntries {
    final value = _configEntries;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<List<String>> _connections;
  @override
  List<List<String>> get connections {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connections);
  }

  @override
  final String? disabledBy;
  @override
  final String? entryType;
  @override
  final String id;
// ignore: avoid-dynamic
  final List<List<dynamic>> _identifiers;
// ignore: avoid-dynamic
  @override
  List<List<dynamic>> get identifiers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_identifiers);
  }

  @override
  final String? manufacturer;
  @override
  final String? model;
  @override
  final String? nameByUser;
  @override
  final String name;
  @override
  final String? swVersion;
  @override
  final String? hwVersion;
  @override
  final String? viaDeviceId;

  @override
  String toString() {
    return 'DeviceRegistry(areaId: $areaId, configurationUrl: $configurationUrl, configEntries: $configEntries, connections: $connections, disabledBy: $disabledBy, entryType: $entryType, id: $id, identifiers: $identifiers, manufacturer: $manufacturer, model: $model, nameByUser: $nameByUser, name: $name, swVersion: $swVersion, hwVersion: $hwVersion, viaDeviceId: $viaDeviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceRegistry &&
            const DeepCollectionEquality().equals(other.areaId, areaId) &&
            const DeepCollectionEquality()
                .equals(other.configurationUrl, configurationUrl) &&
            const DeepCollectionEquality()
                .equals(other._configEntries, _configEntries) &&
            const DeepCollectionEquality()
                .equals(other._connections, _connections) &&
            const DeepCollectionEquality()
                .equals(other.disabledBy, disabledBy) &&
            const DeepCollectionEquality().equals(other.entryType, entryType) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other._identifiers, _identifiers) &&
            const DeepCollectionEquality()
                .equals(other.manufacturer, manufacturer) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality()
                .equals(other.nameByUser, nameByUser) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.swVersion, swVersion) &&
            const DeepCollectionEquality().equals(other.hwVersion, hwVersion) &&
            const DeepCollectionEquality()
                .equals(other.viaDeviceId, viaDeviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(areaId),
      const DeepCollectionEquality().hash(configurationUrl),
      const DeepCollectionEquality().hash(_configEntries),
      const DeepCollectionEquality().hash(_connections),
      const DeepCollectionEquality().hash(disabledBy),
      const DeepCollectionEquality().hash(entryType),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_identifiers),
      const DeepCollectionEquality().hash(manufacturer),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(nameByUser),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(swVersion),
      const DeepCollectionEquality().hash(hwVersion),
      const DeepCollectionEquality().hash(viaDeviceId));

  @JsonKey(ignore: true)
  @override
  _$$_DeviceRegistryCopyWith<_$_DeviceRegistry> get copyWith =>
      __$$_DeviceRegistryCopyWithImpl<_$_DeviceRegistry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceRegistryToJson(this);
  }
}

abstract class _DeviceRegistry implements DeviceRegistry {
  const factory _DeviceRegistry(
      {final String? areaId,
      final String? configurationUrl,
      final List<String>? configEntries,
      required final List<List<String>> connections,
      final String? disabledBy,
      final String? entryType,
      required final String id,
      required final List<List<dynamic>> identifiers,
      final String? manufacturer,
      final String? model,
      final String? nameByUser,
      required final String name,
      final String? swVersion,
      final String? hwVersion,
      final String? viaDeviceId}) = _$_DeviceRegistry;

  factory _DeviceRegistry.fromJson(Map<String, dynamic> json) =
      _$_DeviceRegistry.fromJson;

  @override
  String? get areaId => throw _privateConstructorUsedError;
  @override
  String? get configurationUrl => throw _privateConstructorUsedError;
  @override
  List<String>? get configEntries => throw _privateConstructorUsedError;
  @override
  List<List<String>> get connections => throw _privateConstructorUsedError;
  @override
  String? get disabledBy => throw _privateConstructorUsedError;
  @override
  String? get entryType => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override // ignore: avoid-dynamic
  List<List<dynamic>> get identifiers => throw _privateConstructorUsedError;
  @override
  String? get manufacturer => throw _privateConstructorUsedError;
  @override
  String? get model => throw _privateConstructorUsedError;
  @override
  String? get nameByUser => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get swVersion => throw _privateConstructorUsedError;
  @override
  String? get hwVersion => throw _privateConstructorUsedError;
  @override
  String? get viaDeviceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceRegistryCopyWith<_$_DeviceRegistry> get copyWith =>
      throw _privateConstructorUsedError;
}
