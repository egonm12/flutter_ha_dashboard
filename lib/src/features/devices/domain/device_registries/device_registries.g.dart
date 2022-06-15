// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_registries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceRegistriesDTO _$$_DeviceRegistriesDTOFromJson(
        Map<String, dynamic> json) =>
    _$_DeviceRegistriesDTO(
      id: json['id'] as int,
      type: json['type'] as String,
      success: json['success'] as bool,
      result: (json['result'] as List<dynamic>)
          .map((e) => DeviceRegistry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DeviceRegistriesDTOToJson(
        _$_DeviceRegistriesDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'success': instance.success,
      'result': instance.result.map((e) => e.toJson()).toList(),
    };

_$_DeviceRegistry _$$_DeviceRegistryFromJson(Map<String, dynamic> json) =>
    _$_DeviceRegistry(
      areaId: json['area_id'] as String?,
      configurationUrl: json['configuration_url'] as String?,
      configEntries: (json['config_entries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      connections: (json['connections'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      disabledBy: json['disabled_by'] as String?,
      entryType: json['entry_type'] as String?,
      id: json['id'] as String,
      identifiers: (json['identifiers'] as List<dynamic>)
          .map((e) => e as List<dynamic>)
          .toList(),
      manufacturer: json['manufacturer'] as String?,
      model: json['model'] as String?,
      nameByUser: json['name_by_user'] as String?,
      name: json['name'] as String,
      swVersion: json['sw_version'] as String?,
      hwVersion: json['hw_version'] as String?,
      viaDeviceId: json['via_device_id'] as String?,
    );

Map<String, dynamic> _$$_DeviceRegistryToJson(_$_DeviceRegistry instance) =>
    <String, dynamic>{
      'area_id': instance.areaId,
      'configuration_url': instance.configurationUrl,
      'config_entries': instance.configEntries,
      'connections': instance.connections,
      'disabled_by': instance.disabledBy,
      'entry_type': instance.entryType,
      'id': instance.id,
      'identifiers': instance.identifiers,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'name_by_user': instance.nameByUser,
      'name': instance.name,
      'sw_version': instance.swVersion,
      'hw_version': instance.hwVersion,
      'via_device_id': instance.viaDeviceId,
    };
