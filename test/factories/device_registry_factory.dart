import 'package:flutter_ha_dashboard/src/features/devices/domain/device_registries/device_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_type.dart';
import 'factory.dart';

class DeviceRegistryFactory extends Factory<DeviceRegistry> {
  @override
  DeviceRegistry generateFake({
    EntityType? entityType = EntityType.light,
    String? deviceId,
    bool withAreaId = true,
  }) =>
      DeviceRegistry(
        id: deviceId ?? Factory.createFakeUuid(),
        connections: [],
        identifiers: [],
        name: faker.lorem.word(),
        areaId: withAreaId ? Factory.createFakeUuid() : null,
      );

  @override
  List<DeviceRegistry> generateFakeList({
    required int length,
    EntityType? entityType,
  }) =>
      List.generate(
        length,
        (_) => generateFake(
          entityType: entityType,
        ),
      );
}
