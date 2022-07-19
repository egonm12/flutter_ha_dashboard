import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/src/core/domain/web_socket_event/web_socket_event.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_states/entity_states.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_type.dart';
import 'package:flutter_ha_dashboard/src/features/home/logic/device_filter_list_cubit/device_filter_list_cubit.dart';
import '../../../factories/device_registry_factory.dart';
import '../../../factories/entity_registry_factory.dart';
import '../../../factories/entity_state_factory.dart';
import '../../../factories/entity_states_dto_factory.dart';
import '../../../factories/state_change_dto_factory.dart';
import '../../../mocks/mocks.dart';

void main() {
  group(DeviceFilterListCubit, () {
    late final MockWebSocketService webSocketService;
    DeviceFilterListCubit createCubit() => DeviceFilterListCubit(
          webSocketService: webSocketService,
        );
    late final DeviceFilterListState initialState;

    const deviceId = 'device 1';
    const entityId1 = 'entity 1';
    const entityId2 = 'entity 2';

    final stateChangeDTO = StateChangeDTOFactory().generateFake();
    final devices = [
      DeviceRegistryFactory().generateFake(
        deviceId: deviceId,
        withAreaId: true,
      ),
    ];
    final entities = [
      EntityRegistryFactory().generateFake(
        entityId: entityId1,
        deviceId: deviceId,
        entityType: EntityType.light,
      ),
      EntityRegistryFactory().generateFake(
        entityId: entityId2,
        deviceId: deviceId,
        entityType: EntityType.light,
      ),
    ];

    final List<EntityState> entityStates = [
      EntityStateFactory().generateFake(
        entityId: entityId1,
        attributes: <String, dynamic>{},
      ),
      EntityStateFactory().generateFake(
        entityId: entityId2,
        attributes: <String, dynamic>{},
      ),
    ];
    final entityStatesDTO = EntityStatesDTOFactory().generateFake(
      entityStates: entityStates,
    );

    setUpAll(() {
      webSocketService = MockWebSocketService();
      when(() => webSocketService.stream).thenAnswer(
        (_) => Stream.fromIterable([]),
      );

      initialState = createCubit().state;

      when(webSocketService.subscribeToStateChanges).thenReturn(null);
      when(webSocketService.deviceRegistries).thenReturn(null);
      when(webSocketService.entityRegistries).thenReturn(null);
      when(webSocketService.entityStates).thenReturn(null);
    });

    setUp(() {
      reset(webSocketService);
    });

    blocTest<DeviceFilterListCubit, DeviceFilterListState>(
      'Given the web socket channel is connected'
      'When the cubit initializes'
      'Then it starts listening to the Web Socket service stream'
      'And it subscribes to the state changes through the web socket channel'
      'And it retrieves the device registries through the web socket channel'
      'And it retrieves the entity registries through the web socket channel'
      'And it retrieves the entity states through the web socket channel',
      setUp: () {
        when(() => webSocketService.stream).thenAnswer(
          (_) => Stream.fromIterable([]),
        );
      },
      build: createCubit,
      verify: (_) {
        verify(() => webSocketService.stream.listen(any())).called(1);
        verify(webSocketService.subscribeToStateChanges).called(1);
        verify(webSocketService.deviceRegistries).called(1);
        verify(webSocketService.entityRegistries).called(1);
        verify(webSocketService.entityStates).called(1);
      },
    );

    blocTest<DeviceFilterListCubit, DeviceFilterListState>(
      'Given the web socket channel is connected'
      'When the web socket channel stream emits [WebSocketEvent.stateChangeUpdate]'
      'Then it emits [DeviceFilterListState(event: stateChangeDTO.event)]'
      'And it retrieves the entity states through the web socket channel',
      setUp: () {
        when(() => webSocketService.stream).thenAnswer(
          (_) => Stream.fromIterable(
            [
              WebSocketEvent.stateChangeUpdate(
                stateChangeDTO,
              ),
            ],
          ),
        );
      },
      build: createCubit,
      expect: () => [
        initialState.copyWith(event: stateChangeDTO.event),
      ],
      verify: (deviceFilterListCubit) {
        // One call in the constructor, and another one in the listener
        verify(webSocketService.entityStates).called(2);
      },
    );

    blocTest<DeviceFilterListCubit, DeviceFilterListState>(
      'Given the web socket channel is connected'
      'When the web socket channel stream emits [WebSocketEvent.entityStatesUpdate]'
      'And there are devices in DeviceFilterListState with an area id'
      'And there are entities in DeviceFilterListState with a matching device id'
      'And these entities are not part of a room or zone'
      'Then it emits [DeviceFilterListState(entityStates: entityStatesDTO.result)]'
      'And it emits [DeviceFilterListState(individualLights: entityStates)]',
      seed: () => initialState.copyWith(
        entities: entities,
        devices: devices,
      ),
      setUp: () {
        when(() => webSocketService.stream).thenAnswer(
          (_) => Stream.fromIterable(
            [
              WebSocketEvent.entityStatesUpdate(
                entityStatesDTO,
              ),
            ],
          ),
        );
      },
      build: createCubit,
      expect: () => [
        initialState.copyWith(
          entities: entities,
          devices: devices,
          entityStates: entityStatesDTO.result,
        ),
        predicate<DeviceFilterListState>(
          (value) {
            expect(
              value.individualLights,
              entityStates,
            );
            return true;
          },
        ),
      ],
      verify: (deviceFilterListCubit) {},
    );

    blocTest<DeviceFilterListCubit, DeviceFilterListState>(
      'Given the web socket channel is connected'
      'When the web socket channel stream emits [WebSocketEvent.entityStatesUpdate]'
      'And there are devices in DeviceFilterListState with an area id'
      'And there are entities in DeviceFilterListState with a matching device id'
      'And these entities are part of a room or zone'
      'Then it emits [DeviceFilterListState(entityStates: entityStatesDTO.result)]'
      'And it emits [DeviceFilterListState(individualLights: [])]',
      seed: () => initialState.copyWith(
        entities: entities,
        devices: devices,
        individualLights: entityStates,
      ),
      setUp: () {
        when(() => webSocketService.stream).thenAnswer(
          (_) => Stream.fromIterable(
            [
              WebSocketEvent.entityStatesUpdate(
                EntityStatesDTOFactory().generateFake(
                  entityStates: [
                    EntityStateFactory().generateFake(
                      entityId: entityId1,
                      attributes: <String, dynamic>{
                        "lights": ['light bulb 1']
                      },
                    ),
                    EntityStateFactory().generateFake(
                      entityId: entityId2,
                      attributes: <String, dynamic>{
                        "lights": ['light bulb 2']
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      build: createCubit,
      expect: () => [
        predicate<DeviceFilterListState>((value) {
          expect(
            value,
            isA<DeviceFilterListState>(),
          );
          return true;
        }),
        predicate<DeviceFilterListState>(
          (value) {
            expect(
              value.individualLights,
              <EntityState>[],
            );
            return true;
          },
        ),
      ],
      verify: (deviceFilterListCubit) {},
    );
  });
}
