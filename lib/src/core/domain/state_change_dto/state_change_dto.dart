import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_change_dto.freezed.dart';
part 'state_change_dto.g.dart';

@freezed
class StateChangeDto with _$StateChangeDto {
  const factory StateChangeDto({
    required int id,
    required String type,
    required Event event,
  }) = _StateChangeDto;

  factory StateChangeDto.fromJson(Map<String, dynamic> json) =>
      _$StateChangeDtoFromJson(json);
}

@freezed
class Event with _$Event {
  const factory Event({
    required String eventType,
    required Data data,
    required String origin,
    required DateTime timeFired,
    required Context context,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
class Context with _$Context {
  const factory Context({
    required String id,
    String? parentId,
    String? userId,
  }) = _Context;

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String entityId,
    required State oldState,
    required State newState,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class State with _$State {
  const factory State({
    required String entityId,
    required String state,
    required Map<String, dynamic> attributes,
    required DateTime lastChanged,
    required DateTime lastUpdated,
    required Context context,
  }) = _State;

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);
}
