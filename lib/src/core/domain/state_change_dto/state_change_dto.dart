import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ha_dashboard/src/core/domain/context/context.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_states/entity_states.dart';

part 'state_change_dto.freezed.dart';
part 'state_change_dto.g.dart';

@freezed
class StateChangeDto with _$StateChangeDto {
  const factory StateChangeDto({
    required int id,
    required String type,
    required StateChangeEvent event,
  }) = _StateChangeDto;

  factory StateChangeDto.fromJson(Map<String, dynamic> json) =>
      _$StateChangeDtoFromJson(json);
}

@freezed
class StateChangeEvent with _$StateChangeEvent {
  const factory StateChangeEvent({
    required String eventType,
    required Data data,
    required String origin,
    required DateTime timeFired,
    required Context context,
  }) = _StateChangeEvent;

  factory StateChangeEvent.fromJson(Map<String, dynamic> json) =>
      _$StateChangeEventFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String entityId,
    required EntityState oldState,
    required EntityState newState,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
