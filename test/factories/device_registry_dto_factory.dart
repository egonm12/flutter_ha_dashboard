import 'package:flutter_ha_dashboard/src/features/devices/domain/device_registries/device_registries.dart';
import 'device_registry_factory.dart';
import 'factory.dart';

class DeviceRegistriesDTOFactory extends Factory<DeviceRegistriesDTO> {
  @override
  DeviceRegistriesDTO generateFake({
    int? id,
    List<DeviceRegistry>? deviceRegistries,
  }) =>
      DeviceRegistriesDTO(
        id: id ?? faker.randomGenerator.integer(1000),
        type: "event",
        result: deviceRegistries ??
            DeviceRegistryFactory().generateFakeList(length: 1),
        success: true,
      );

  @override
  List<DeviceRegistriesDTO> generateFakeList({
    required int length,
  }) =>
      List.generate(
        length,
        (index) => generateFake(id: index),
      );
}
