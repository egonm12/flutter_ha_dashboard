import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ha_dashboard/src/core/domain/state_change_dto/state_change_dto.dart';
import 'package:flutter_ha_dashboard/src/features/areas/domain/area_registries/area_registries.dart';
import 'package:flutter_ha_dashboard/src/features/devices/domain/device_registries/device_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_registries/entity_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_states/entity_states.dart';

part 'web_socket_event.freezed.dart';

@freezed
class WebSocketEvent with _$WebSocketEvent {
  const factory WebSocketEvent.areaRegistryList(
    AreaRegistriesDTO areaRegistriesDTO,
  ) = _AreaRegistryListEvent;
  const factory WebSocketEvent.deviceRegistryList(
    DeviceRegistriesDTO deviceRegistriesDTO,
  ) = _DeviceRegistryListEvent;
  const factory WebSocketEvent.entityRegistryList(
    EntityRegistriesDto entityRegistriesDTO,
  ) = _EntityRegistryListEvent;
  const factory WebSocketEvent.stateChange(
    StateChangeDto stateChangeDto,
  ) = _EntityStateChange;
  const factory WebSocketEvent.entityStates(
    EntityStatesDTO entityStatesDTO,
  ) = _EntityStatesEvent;
}
