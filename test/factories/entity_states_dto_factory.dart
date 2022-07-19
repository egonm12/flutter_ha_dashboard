import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_states/entity_states.dart';
import 'entity_state_factory.dart';
import 'factory.dart';

class EntityStatesDTOFactory extends Factory<EntityStatesDTO> {
  @override
  EntityStatesDTO generateFake({
    int? id,
    List<EntityState>? entityStates,
  }) =>
      EntityStatesDTO(
        id: id ?? faker.randomGenerator.integer(1000),
        type: "event",
        result:
            entityStates ?? EntityStateFactory().generateFakeList(length: 1),
        success: true,
      );

  @override
  List<EntityStatesDTO> generateFakeList({
    required int length,
  }) =>
      List.generate(
        length,
        (index) => generateFake(id: index),
      );
}
