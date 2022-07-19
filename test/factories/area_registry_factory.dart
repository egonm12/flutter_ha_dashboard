import 'package:flutter_ha_dashboard/src/features/areas/domain/area_registries/area_registries.dart';
import 'factory.dart';

class AreaRegistryFactory extends Factory<AreaRegistry> {
  @override
  AreaRegistry generateFake() => AreaRegistry(
        areaId: Factory.createFakeUuid(),
      );

  @override
  List<AreaRegistry> generateFakeList({
    required int length,
  }) =>
      List.generate(
        length,
        (_) => generateFake(),
      );
}
