// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'area_registries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AreaRegistriesDTO _$AreaRegistriesDTOFromJson(Map<String, dynamic> json) {
  return _AreaRegistriesDTO.fromJson(json);
}

/// @nodoc
mixin _$AreaRegistriesDTO {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  List<AreaRegistry> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaRegistriesDTOCopyWith<AreaRegistriesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaRegistriesDTOCopyWith<$Res> {
  factory $AreaRegistriesDTOCopyWith(
          AreaRegistriesDTO value, $Res Function(AreaRegistriesDTO) then) =
      _$AreaRegistriesDTOCopyWithImpl<$Res>;
  $Res call({int id, String type, bool success, List<AreaRegistry> result});
}

/// @nodoc
class _$AreaRegistriesDTOCopyWithImpl<$Res>
    implements $AreaRegistriesDTOCopyWith<$Res> {
  _$AreaRegistriesDTOCopyWithImpl(this._value, this._then);

  final AreaRegistriesDTO _value;
  // ignore: unused_field
  final $Res Function(AreaRegistriesDTO) _then;

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
              as List<AreaRegistry>,
    ));
  }
}

/// @nodoc
abstract class _$$_AreaRegistriesDTOCopyWith<$Res>
    implements $AreaRegistriesDTOCopyWith<$Res> {
  factory _$$_AreaRegistriesDTOCopyWith(_$_AreaRegistriesDTO value,
          $Res Function(_$_AreaRegistriesDTO) then) =
      __$$_AreaRegistriesDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String type, bool success, List<AreaRegistry> result});
}

/// @nodoc
class __$$_AreaRegistriesDTOCopyWithImpl<$Res>
    extends _$AreaRegistriesDTOCopyWithImpl<$Res>
    implements _$$_AreaRegistriesDTOCopyWith<$Res> {
  __$$_AreaRegistriesDTOCopyWithImpl(
      _$_AreaRegistriesDTO _value, $Res Function(_$_AreaRegistriesDTO) _then)
      : super(_value, (v) => _then(v as _$_AreaRegistriesDTO));

  @override
  _$_AreaRegistriesDTO get _value => super._value as _$_AreaRegistriesDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_AreaRegistriesDTO(
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
              as List<AreaRegistry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AreaRegistriesDTO implements _AreaRegistriesDTO {
  const _$_AreaRegistriesDTO(
      {required this.id,
      required this.type,
      required this.success,
      required final List<AreaRegistry> result})
      : _result = result;

  factory _$_AreaRegistriesDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AreaRegistriesDTOFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final bool success;
  final List<AreaRegistry> _result;
  @override
  List<AreaRegistry> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'AreaRegistriesDTO(id: $id, type: $type, success: $success, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AreaRegistriesDTO &&
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
  _$$_AreaRegistriesDTOCopyWith<_$_AreaRegistriesDTO> get copyWith =>
      __$$_AreaRegistriesDTOCopyWithImpl<_$_AreaRegistriesDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaRegistriesDTOToJson(this);
  }
}

abstract class _AreaRegistriesDTO implements AreaRegistriesDTO {
  const factory _AreaRegistriesDTO(
      {required final int id,
      required final String type,
      required final bool success,
      required final List<AreaRegistry> result}) = _$_AreaRegistriesDTO;

  factory _AreaRegistriesDTO.fromJson(Map<String, dynamic> json) =
      _$_AreaRegistriesDTO.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  List<AreaRegistry> get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AreaRegistriesDTOCopyWith<_$_AreaRegistriesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

AreaRegistry _$AreaRegistryFromJson(Map<String, dynamic> json) {
  return _AreaRegistry.fromJson(json);
}

/// @nodoc
mixin _$AreaRegistry {
  String get areaId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaRegistryCopyWith<AreaRegistry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaRegistryCopyWith<$Res> {
  factory $AreaRegistryCopyWith(
          AreaRegistry value, $Res Function(AreaRegistry) then) =
      _$AreaRegistryCopyWithImpl<$Res>;
  $Res call({String areaId, String? name, String? picture});
}

/// @nodoc
class _$AreaRegistryCopyWithImpl<$Res> implements $AreaRegistryCopyWith<$Res> {
  _$AreaRegistryCopyWithImpl(this._value, this._then);

  final AreaRegistry _value;
  // ignore: unused_field
  final $Res Function(AreaRegistry) _then;

  @override
  $Res call({
    Object? areaId = freezed,
    Object? name = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      areaId: areaId == freezed
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AreaRegistryCopyWith<$Res>
    implements $AreaRegistryCopyWith<$Res> {
  factory _$$_AreaRegistryCopyWith(
          _$_AreaRegistry value, $Res Function(_$_AreaRegistry) then) =
      __$$_AreaRegistryCopyWithImpl<$Res>;
  @override
  $Res call({String areaId, String? name, String? picture});
}

/// @nodoc
class __$$_AreaRegistryCopyWithImpl<$Res>
    extends _$AreaRegistryCopyWithImpl<$Res>
    implements _$$_AreaRegistryCopyWith<$Res> {
  __$$_AreaRegistryCopyWithImpl(
      _$_AreaRegistry _value, $Res Function(_$_AreaRegistry) _then)
      : super(_value, (v) => _then(v as _$_AreaRegistry));

  @override
  _$_AreaRegistry get _value => super._value as _$_AreaRegistry;

  @override
  $Res call({
    Object? areaId = freezed,
    Object? name = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$_AreaRegistry(
      areaId: areaId == freezed
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AreaRegistry implements _AreaRegistry {
  const _$_AreaRegistry({required this.areaId, this.name, this.picture});

  factory _$_AreaRegistry.fromJson(Map<String, dynamic> json) =>
      _$$_AreaRegistryFromJson(json);

  @override
  final String areaId;
  @override
  final String? name;
  @override
  final String? picture;

  @override
  String toString() {
    return 'AreaRegistry(areaId: $areaId, name: $name, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AreaRegistry &&
            const DeepCollectionEquality().equals(other.areaId, areaId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.picture, picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(areaId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(picture));

  @JsonKey(ignore: true)
  @override
  _$$_AreaRegistryCopyWith<_$_AreaRegistry> get copyWith =>
      __$$_AreaRegistryCopyWithImpl<_$_AreaRegistry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaRegistryToJson(this);
  }
}

abstract class _AreaRegistry implements AreaRegistry {
  const factory _AreaRegistry(
      {required final String areaId,
      final String? name,
      final String? picture}) = _$_AreaRegistry;

  factory _AreaRegistry.fromJson(Map<String, dynamic> json) =
      _$_AreaRegistry.fromJson;

  @override
  String get areaId => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get picture => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AreaRegistryCopyWith<_$_AreaRegistry> get copyWith =>
      throw _privateConstructorUsedError;
}
