import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_states.freezed.dart';
part 'entity_states.g.dart';

@freezed
class EntityStatesDTO with _$EntityStatesDTO {
  const factory EntityStatesDTO({
    required int id,
    required String type,
    required bool success,
    required List<EntityState> result,
  }) = _EntityStatesDTO;

  factory EntityStatesDTO.fromJson(Map<String, dynamic> json) =>
      _$EntityStatesDTOFromJson(json);
}

@freezed
class EntityState with _$EntityState {
  const factory EntityState({
    required String entityId,
    required String state,
    required Map<String, dynamic> attributes,
    required DateTime lastChanged,
    required DateTime lastUpdated,
    required Context context,
  }) = _EntityState;

  factory EntityState.fromJson(Map<String, dynamic> json) =>
      _$EntityStateFromJson(json);
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
