import 'package:flutter_ha_dashboard/src/core/domain/state_change_dto/state_change_dto.dart';
import 'factory.dart';
import 'state_change_event_factory.dart';

class StateChangeDTOFactory extends Factory<StateChangeDto> {
  @override
  StateChangeDto generateFake({
    int? id,
  }) =>
      StateChangeDto(
        id: id ?? faker.randomGenerator.integer(1000),
        type: "event",
        event: StateChangeEventFactory().generateFake(),
      );

  @override
  List<StateChangeDto> generateFakeList({
    required int length,
  }) =>
      List.generate(
        length,
        (index) => generateFake(id: index),
      );
}
