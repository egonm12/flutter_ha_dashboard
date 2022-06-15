// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_registries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityRegistriesDto _$$_EntityRegistriesDtoFromJson(
        Map<String, dynamic> json) =>
    _$_EntityRegistriesDto(
      id: json['id'] as int,
      type: json['type'] as String,
      success: json['success'] as bool,
      result: (json['result'] as List<dynamic>)
          .map((e) => EntityRegistry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EntityRegistriesDtoToJson(
        _$_EntityRegistriesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'success': instance.success,
      'result': instance.result.map((e) => e.toJson()).toList(),
    };

_$_EntityRegistry _$$_EntityRegistryFromJson(Map<String, dynamic> json) =>
    _$_EntityRegistry(
      areaId: json['area_id'] as String?,
      configEntryId: json['config_entry_id'] as String?,
      deviceId: json['device_id'] as String?,
      disabledBy: json['disabled_by'] as String?,
      entityCategory: json['entity_category'] as String?,
      entityId: json['entity_id'] as String,
      hiddenBy: json['hidden_by'] as String?,
      icon: json['icon'] as String?,
      name: json['name'] as String?,
      platform: json['platform'] as String?,
    );

Map<String, dynamic> _$$_EntityRegistryToJson(_$_EntityRegistry instance) =>
    <String, dynamic>{
      'area_id': instance.areaId,
      'config_entry_id': instance.configEntryId,
      'device_id': instance.deviceId,
      'disabled_by': instance.disabledBy,
      'entity_category': instance.entityCategory,
      'entity_id': instance.entityId,
      'hidden_by': instance.hiddenBy,
      'icon': instance.icon,
      'name': instance.name,
      'platform': instance.platform,
    };
