import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_registries/entity_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_type.dart';
import 'factory.dart';

class EntityRegistryFactory extends Factory<EntityRegistry> {
  @override
  EntityRegistry generateFake({
    EntityType? entityType = EntityType.light,
    String? entityId,
    String? deviceId,
  }) =>
      EntityRegistry(
        entityId: entityType == EntityType.light
            ? 'light.${entityId ?? Factory.createFakeUuid()}'
            : entityId ?? Factory.createFakeUuid(),
        deviceId: deviceId,
      );

  @override
  List<EntityRegistry> generateFakeList({
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
