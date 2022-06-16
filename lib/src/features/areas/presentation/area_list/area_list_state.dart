part of 'area_list_cubit.dart';

class AreaListState extends Equatable {
  const AreaListState({
    required this.areas,
    required this.devices,
    required this.entities,
    required this.commandId,
  });

  final List<AreaRegistry> areas;
  final List<DeviceRegistry> devices;
  final List<EntityRegistry> entities;
  final int commandId;

  @override
  List<Object?> get props => [
        areas,
        devices,
        entities,
        commandId,
      ];

  AreaListState copyWith({
    List<AreaRegistry>? areas,
    List<DeviceRegistry>? devices,
    List<EntityRegistry>? entities,
    int? commandId,
  }) =>
      AreaListState(
        areas: areas ?? this.areas,
        devices: devices ?? this.devices,
        entities: entities ?? this.entities,
        commandId: commandId ?? this.commandId,
      );
}
