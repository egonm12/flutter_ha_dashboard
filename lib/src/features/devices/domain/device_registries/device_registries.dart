import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_registries.freezed.dart';
part 'device_registries.g.dart';

@freezed
class DeviceRegistriesDTO with _$DeviceRegistriesDTO {
  const factory DeviceRegistriesDTO({
    required int id,
    required String type,
    required bool success,
    required List<DeviceRegistry> result,
  }) = _DeviceRegistriesDTO;

  factory DeviceRegistriesDTO.fromJson(Map<String, dynamic> json) =>
      _$DeviceRegistriesDTOFromJson(json);
}

@freezed
class DeviceRegistry with _$DeviceRegistry {
  const factory DeviceRegistry({
    String? areaId,
    String? configurationUrl,
    List<String>? configEntries,
    required List<List<String>> connections,
    String? disabledBy,
    String? entryType,
    required String id,
    // ignore: avoid-dynamic
    required List<List<dynamic>> identifiers,
    String? manufacturer,
    String? model,
    String? nameByUser,
    required String name,
    String? swVersion,
    String? hwVersion,
    String? viaDeviceId,
  }) = _DeviceRegistry;

  factory DeviceRegistry.fromJson(Map<String, dynamic> json) =>
      _$DeviceRegistryFromJson(json);
}
