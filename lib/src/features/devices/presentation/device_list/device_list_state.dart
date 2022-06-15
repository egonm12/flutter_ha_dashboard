part of 'device_list_cubit.dart';

class DeviceListState extends Equatable {
  const DeviceListState({
    required this.devices,
    required this.commandId,
  });

  final List<DeviceRegistry> devices;
  final int commandId;

  @override
  List<Object?> get props => [
        devices,
        commandId,
      ];

  DeviceListState copyWith({
    List<DeviceRegistry>? devices,
    int? commandId,
  }) =>
      DeviceListState(
        devices: devices ?? this.devices,
        commandId: commandId ?? this.commandId,
      );
}
