import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_registries/entity_registries.dart';
import 'entity_registry_factory.dart';
import 'factory.dart';

class EntityRegistriesDTOFactory extends Factory<EntityRegistriesDto> {
  @override
  EntityRegistriesDto generateFake({
    int? id,
    List<EntityRegistry>? entityRegistries,
  }) =>
      EntityRegistriesDto(
        id: id ?? faker.randomGenerator.integer(1000),
        type: "event",
        result: entityRegistries ??
            EntityRegistryFactory().generateFakeList(length: 1),
        success: true,
      );

  @override
  List<EntityRegistriesDto> generateFakeList({
    required int length,
  }) =>
      List.generate(
        length,
        (index) => generateFake(id: index),
      );
}
