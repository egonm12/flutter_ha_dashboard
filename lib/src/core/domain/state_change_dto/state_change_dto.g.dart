// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_change_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StateChangeDto _$$_StateChangeDtoFromJson(Map<String, dynamic> json) =>
    _$_StateChangeDto(
      id: json['id'] as int,
      type: json['type'] as String,
      event: StateChangeEvent.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StateChangeDtoToJson(_$_StateChangeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'event': instance.event.toJson(),
    };

_$_StateChangeEvent _$$_StateChangeEventFromJson(Map<String, dynamic> json) =>
    _$_StateChangeEvent(
      eventType: json['event_type'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      origin: json['origin'] as String,
      timeFired: DateTime.parse(json['time_fired'] as String),
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StateChangeEventToJson(_$_StateChangeEvent instance) =>
    <String, dynamic>{
      'event_type': instance.eventType,
      'data': instance.data.toJson(),
      'origin': instance.origin,
      'time_fired': instance.timeFired.toIso8601String(),
      'context': instance.context.toJson(),
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      entityId: json['entity_id'] as String,
      oldState: EntityState.fromJson(json['old_state'] as Map<String, dynamic>),
      newState: EntityState.fromJson(json['new_state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'entity_id': instance.entityId,
      'old_state': instance.oldState.toJson(),
      'new_state': instance.newState.toJson(),
    };
