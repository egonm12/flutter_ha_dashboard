import 'package:freezed_annotation/freezed_annotation.dart';

part 'area_registries.freezed.dart';
part 'area_registries.g.dart';

@freezed
class AreaRegistriesDTO with _$AreaRegistriesDTO {
  const factory AreaRegistriesDTO({
    required int id,
    required String type,
    required bool success,
    required List<AreaRegistry> result,
  }) = _AreaRegistriesDTO;

  factory AreaRegistriesDTO.fromJson(Map<String, dynamic> json) =>
      _$AreaRegistriesDTOFromJson(json);
}

@freezed
class AreaRegistry with _$AreaRegistry {
  const factory AreaRegistry({
    required String areaId,
    @Default('') String name,
    String? picture,
  }) = _AreaRegistry;

  factory AreaRegistry.fromJson(Map<String, dynamic> json) =>
      _$AreaRegistryFromJson(json);
}
