import 'package:flutter_ha_dashboard/src/features/areas/domain/area_registries/area_registries.dart';
import 'area_registry_factory.dart';
import 'factory.dart';

class AreaRegistriesDTOFactory extends Factory<AreaRegistriesDTO> {
  @override
  AreaRegistriesDTO generateFake({
    int? id,
    List<AreaRegistry>? areaRegistries,
  }) =>
      AreaRegistriesDTO(
        id: id ?? faker.randomGenerator.integer(1000),
        type: "event",
        result: areaRegistries ??
            AreaRegistryFactory().generateFakeList(
              length: 1,
            ),
        success: true,
      );

  @override
  List<AreaRegistriesDTO> generateFakeList({
    required int length,
  }) =>
      List.generate(
        length,
        (index) => generateFake(id: index),
      );
}
