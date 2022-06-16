// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_registries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AreaRegistriesDTO _$$_AreaRegistriesDTOFromJson(Map<String, dynamic> json) =>
    _$_AreaRegistriesDTO(
      id: json['id'] as int,
      type: json['type'] as String,
      success: json['success'] as bool,
      result: (json['result'] as List<dynamic>)
          .map((e) => AreaRegistry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AreaRegistriesDTOToJson(
        _$_AreaRegistriesDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'success': instance.success,
      'result': instance.result.map((e) => e.toJson()).toList(),
    };

_$_AreaRegistry _$$_AreaRegistryFromJson(Map<String, dynamic> json) =>
    _$_AreaRegistry(
      areaId: json['area_id'] as String,
      name: json['name'] as String? ?? '',
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$$_AreaRegistryToJson(_$_AreaRegistry instance) =>
    <String, dynamic>{
      'area_id': instance.areaId,
      'name': instance.name,
      'picture': instance.picture,
    };
