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
  })  : _webSocketService2 =
            webSocketService ?? serviceLocator<WebSocketService>(),
        super(const DeviceFilterListState(
          individualLights: [],
          devices: [],
          entities: [],
          entityStates: [],
        )) {
    _webSocketServiceStream = _webSocketService2.stream.listen((event) {
      event.when(
        stateChange: (stateChange) {
          emit(state.copyWith(
            event: stateChange.event,
          ));
          serviceLocator<WebSocketService>().entityStates();
        },
        entityStates: (entityStates) {
          emit(state.copyWith(
            entityStates: entityStates.result,
          ));
          findIndividualLights(entityStates.result);
        },
        areaRegistryList: (_) => null,
        deviceRegistryList: (devices) => emit(state.copyWith(
          devices: devices.result,
        )),
        entityRegistryList: (entities) => emit(state.copyWith(
          entities: entities.result,
        )),
      );
    });

    serviceLocator<WebSocketService>().subscribeToStateChanges();
    serviceLocator<WebSocketService>().deviceRegistries();
    serviceLocator<WebSocketService>().entityRegistries();
    serviceLocator<WebSocketService>().entityStates();
  }

  late final WebSocketService _webSocketService2;

  late final StreamSubscription<WebSocketEvent> _webSocketServiceStream;

  @override
  Future<void> close() async {
    await _webSocketServiceStream.cancel();
    super.close();
  }

  void findIndividualLights(List<EntityState> entityStates) {
    final lightEntitiesWithArea = state.entities.where(
      (entity) =>
          entity.entityId.startsWith(
            EntityType.light.type,
          ) &&
          state.devices.firstWhereOrNull(
                (device) =>
                    device.id == entity.deviceId && device.areaId != null,
              ) !=
              null,
    );

    final lightStates = entityStates.where(
      (entityState) =>
          entityState.entityId ==
          lightEntitiesWithArea
              .firstWhereOrNull(
                (light) => light.entityId == entityState.entityId,
              )
              ?.entityId,
    );

    emit(
      state.copyWith(
        individualLights: lightStates
            // returns a list of lights for rooms and zones
            .where((light) => light.attributes['lights'] == null)
            .toList(),
      ),
    );
  }
}
