import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_registries.freezed.dart';
part 'entity_registries.g.dart';

@freezed
abstract class EntityRegistriesDto with _$EntityRegistriesDto {
  const factory EntityRegistriesDto({
    required int id,
    required String type,
    required bool success,
    required List<EntityRegistry> result,
  }) = _EntityRegistriesDto;

  factory EntityRegistriesDto.fromJson(Map<String, dynamic> json) =>
      _$EntityRegistriesDtoFromJson(json);
}

@freezed
abstract class EntityRegistry with _$EntityRegistry {
  const factory EntityRegistry({
    String? areaId,
    String? configEntryId,
    String? deviceId,
    String? disabledBy,
    String? entityCategory,
    required String entityId,
    String? hiddenBy,
    String? icon,
    String? name,
    String? platform,
  }) = _EntityRegistry;

  factory EntityRegistry.fromJson(Map<String, dynamic> json) =>
      _$EntityRegistryFromJson(json);
}
