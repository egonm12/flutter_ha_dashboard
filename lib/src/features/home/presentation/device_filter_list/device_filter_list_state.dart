part of 'device_filter_list_cubit.dart';

class DeviceFilterListState extends Equatable {
  const DeviceFilterListState({
    required this.individualLights,
    required this.devices,
    required this.entities,
    required this.entityStates,
    this.event,
  });

  final List<EntityState> individualLights;
  final List<DeviceRegistry> devices;
  final List<EntityRegistry> entities;
  final List<EntityState> entityStates;
  final Event? event;

  @override
  List<Object?> get props => [
        individualLights,
        devices,
        entities,
        entityStates,
        event,
      ];

  DeviceFilterListState copyWith({
    List<EntityState>? individualLights,
    List<DeviceRegistry>? devices,
    List<EntityRegistry>? entities,
    List<EntityState>? entityStates,
    Event? event,
  }) =>
      DeviceFilterListState(
        individualLights: individualLights ?? this.individualLights,
        devices: devices ?? this.devices,
        entities: entities ?? this.entities,
        entityStates: entityStates ?? this.entityStates,
        event: event ?? this.event,
      );
}
