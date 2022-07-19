import 'dart:async';

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/domain/state_change_dto/state_change_dto.dart';
import 'package:flutter_ha_dashboard/src/core/domain/web_socket_event/web_socket_event.dart';
import 'package:flutter_ha_dashboard/src/core/services/web_socket_service.dart';
import 'package:flutter_ha_dashboard/src/features/devices/domain/device_registries/device_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_registries/entity_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_states/entity_states.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_type.dart';

part 'device_filter_list_state.dart';

class DeviceFilterListCubit extends Cubit<DeviceFilterListState> {
  DeviceFilterListCubit({
    WebSocketService? webSocketService,
  })  : _webSocketService =
            webSocketService ?? serviceLocator<WebSocketService>(),
        super(
          const DeviceFilterListState(
            individualLights: [],
            devices: [],
            entities: [],
            entityStates: [],
          ),
        ) {
    _webSocketServiceStream = _webSocketService.stream.listen((event) {
      event.when(
        stateChangeUpdate: (stateChangeUpdate) {
          emit(state.copyWith(
            event: stateChangeUpdate.event,
          ));
          _webSocketService.entityStates();
        },
        entityStatesUpdate: (entityStatesUpdate) {
          emit(state.copyWith(
            entityStates: entityStatesUpdate.result,
          ));
          findIndividualLights(entityStatesUpdate.result);
        },
        areaRegistryListUpdate: (_) => null,
        deviceRegistryListUpdate: (deviceRegistryListUpdate) => emit(
          state.copyWith(
            devices: deviceRegistryListUpdate.result,
          ),
        ),
        entityRegistryListUpdate: (entityRegistryListUpdate) => emit(
          state.copyWith(
            entities: entityRegistryListUpdate.result,
          ),
        ),
      );
    });

    _webSocketService.subscribeToStateChanges();
    _webSocketService.deviceRegistries();
    _webSocketService.entityRegistries();
    _webSocketService.entityStates();
  }

  late final WebSocketService _webSocketService;

  late final StreamSubscription<WebSocketEvent> _webSocketServiceStream;

  @override
  Future<void> close() async {
    await _webSocketServiceStream.cancel();
    super.close();
  }

  void findIndividualLights(List<EntityState> entityStates) {
    final lightEntitiesWithArea = _lightEntitiesWithArea(
      state.entities,
      state.devices,
    );

    final lightStates = _lightStates(
      entityStates,
      lightEntitiesWithArea,
    );

    emit(
      state.copyWith(
        individualLights: lightStates
            // returns a list of lights without rooms and zones
            .where((light) => light.attributes['lights'] == null)
            .toList(),
      ),
    );
  }

  Iterable<EntityRegistry> _lightEntitiesWithArea(
    List<EntityRegistry> entities,
    List<DeviceRegistry> devices,
  ) =>
      entities.where(
        (entity) =>
            entity.entityId.startsWith(
              EntityType.light.type,
            ) &&
            devices.firstWhereOrNull(
                  (device) =>
                      device.id == entity.deviceId && device.areaId != null,
                ) !=
                null,
      );

  Iterable<EntityState> _lightStates(
    List<EntityState> entityStates,
    Iterable<EntityRegistry> lightEntitiesWithArea,
  ) =>
      entityStates.where(
        (entityState) =>
            entityState.entityId ==
            lightEntitiesWithArea
                .firstWhereOrNull(
                  (light) => light.entityId == entityState.entityId,
                )
                ?.entityId,
      );
}
