import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_states/entity_states.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_type.dart';
import 'context_factory.dart';
import 'factory.dart';

class EntityStateFactory extends Factory<EntityState> {
  @override
  EntityState generateFake({
    EntityType? entityType = EntityType.light,
    String? entityId,
    String? state,
    Map<String, dynamic>? attributes,
  }) =>
      EntityState(
        entityId: entityType == EntityType.light
            ? 'light.${entityId ?? Factory.createFakeUuid()}'
            : entityId ?? Factory.createFakeUuid(),
        state: state ??
            (entityType == EntityType.light
                ? faker.randomGenerator.fromPattern(<String>['on', 'off'])
                : ''),
        attributes: attributes ?? <String, dynamic>{},
        lastChanged: DateTime.now(),
        lastUpdated: DateTime.now(),
        context: ContextFactory().generateFake(),
      );

  @override
  List<EntityState> generateFakeList(
          {required int length,
          EntityType? entityType,
          Map<String, dynamic>? attributes}) =>
      List.generate(
        length,
        (_) => generateFake(
          entityType: entityType,
          attributes: attributes,
        ),
      );
}
