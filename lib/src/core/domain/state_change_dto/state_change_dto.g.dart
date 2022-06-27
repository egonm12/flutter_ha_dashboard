// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_change_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StateChangeDto _$$_StateChangeDtoFromJson(Map<String, dynamic> json) =>
    _$_StateChangeDto(
      id: json['id'] as int,
      type: json['type'] as String,
      event: Event.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StateChangeDtoToJson(_$_StateChangeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'event': instance.event.toJson(),
    };

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      eventType: json['event_type'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      origin: json['origin'] as String,
      timeFired: DateTime.parse(json['time_fired'] as String),
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'event_type': instance.eventType,
      'data': instance.data.toJson(),
      'origin': instance.origin,
      'time_fired': instance.timeFired.toIso8601String(),
      'context': instance.context.toJson(),
    };

_$_Context _$$_ContextFromJson(Map<String, dynamic> json) => _$_Context(
      id: json['id'] as String,
      parentId: json['parent_id'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$$_ContextToJson(_$_Context instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'user_id': instance.userId,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      entityId: json['entity_id'] as String,
      oldState: State.fromJson(json['old_state'] as Map<String, dynamic>),
      newState: State.fromJson(json['new_state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'entity_id': instance.entityId,
      'old_state': instance.oldState.toJson(),
      'new_state': instance.newState.toJson(),
    };

_$_State _$$_StateFromJson(Map<String, dynamic> json) => _$_State(
      entityId: json['entity_id'] as String,
      state: json['state'] as String,
      attributes: json['attributes'] as Map<String, dynamic>,
      lastChanged: DateTime.parse(json['last_changed'] as String),
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StateToJson(_$_State instance) => <String, dynamic>{
      'entity_id': instance.entityId,
      'state': instance.state,
      'attributes': instance.attributes,
      'last_changed': instance.lastChanged.toIso8601String(),
      'last_updated': instance.lastUpdated.toIso8601String(),
      'context': instance.context.toJson(),
    };
