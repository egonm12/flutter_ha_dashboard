// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_states.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityStatesDTO _$$_EntityStatesDTOFromJson(Map<String, dynamic> json) =>
    _$_EntityStatesDTO(
      id: json['id'] as int,
      type: json['type'] as String,
      success: json['success'] as bool,
      result: (json['result'] as List<dynamic>)
          .map((e) => EntityState.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EntityStatesDTOToJson(_$_EntityStatesDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'success': instance.success,
      'result': instance.result.map((e) => e.toJson()).toList(),
    };

_$_EntityState _$$_EntityStateFromJson(Map<String, dynamic> json) =>
    _$_EntityState(
      entityId: json['entity_id'] as String,
      state: json['state'] as String,
      attributes: json['attributes'] as Map<String, dynamic>,
      lastChanged: DateTime.parse(json['last_changed'] as String),
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EntityStateToJson(_$_EntityState instance) =>
    <String, dynamic>{
      'entity_id': instance.entityId,
      'state': instance.state,
      'attributes': instance.attributes,
      'last_changed': instance.lastChanged.toIso8601String(),
      'last_updated': instance.lastUpdated.toIso8601String(),
      'context': instance.context.toJson(),
    };
