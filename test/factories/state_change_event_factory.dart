import 'package:flutter_ha_dashboard/src/core/domain/state_change_dto/state_change_dto.dart';
import 'context_factory.dart';
import 'entity_state_factory.dart';
import 'factory.dart';

class StateChangeEventFactory extends Factory<StateChangeEvent> {
  @override
  StateChangeEvent generateFake({
    String? state,
  }) =>
      StateChangeEvent(
        eventType: 'state_changed',
        context: ContextFactory().generateFake(),
        data: Data(
          entityId: '',
          oldState: EntityStateFactory().generateFake(),
          newState: EntityStateFactory().generateFake(),
        ),
        origin: '',
        timeFired: faker.date.dateTime(),
      );

  @override
  List<StateChangeEvent> generateFakeList({
    required int length,
  }) =>
      List.generate(
        length,
        (_) => generateFake(),
      );
}
