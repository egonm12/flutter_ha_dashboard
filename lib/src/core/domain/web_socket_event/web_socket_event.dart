import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ha_dashboard/src/core/domain/state_change_dto/state_change_dto.dart';
import 'package:flutter_ha_dashboard/src/features/areas/domain/area_registries/area_registries.dart';
import 'package:flutter_ha_dashboard/src/features/devices/domain/device_registries/device_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_registries/entity_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_states/entity_states.dart';

part 'web_socket_event.freezed.dart';

@freezed
class WebSocketEvent with _$WebSocketEvent {
  const factory WebSocketEvent.areaRegistryListUpdate(
    AreaRegistriesDTO areaRegistriesDTO,
  ) = _AreaRegistryListEvent;
  const factory WebSocketEvent.deviceRegistryListUpdate(
    DeviceRegistriesDTO deviceRegistriesDTO,
  ) = _DeviceRegistryListEvent;
  const factory WebSocketEvent.entityRegistryListUpdate(
    EntityRegistriesDto entityRegistriesDTO,
  ) = _EntityRegistryListEvent;
  const factory WebSocketEvent.stateChangeUpdate(
    StateChangeDto stateChangeDto,
  ) = _EntityStateChange;
  const factory WebSocketEvent.entityStatesUpdate(
    EntityStatesDTO entityStatesDTO,
  ) = _EntityStatesEvent;
}
