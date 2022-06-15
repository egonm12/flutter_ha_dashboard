import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ha_dashboard/src/features/devices/data/devices_repository.dart';
import 'package:flutter_ha_dashboard/src/features/devices/domain/device_registries/device_registries.dart';

part 'device_list_state.dart';

class DeviceListCubit extends Cubit<DeviceListState> {
  DeviceListCubit({
    required DevicesRepository devicesRepository,
  })  : _devicesRepository = devicesRepository,
        super(const DeviceListState(
          commandId: 1,
          devices: [],
        )) {
    _devicesRepositorySubscription =
        _devicesRepository.stream.listen((Map<String, dynamic> event) {
      try {
        final devices = DeviceRegistriesDTO.fromJson(event).result;

        emit(
          state.copyWith(
            devices: devices,
          ),
        );
      } catch (e) {
        print(e);
      }
    });
  }

  late final DevicesRepository _devicesRepository;

  late final StreamSubscription<Map<String, dynamic>>
      _devicesRepositorySubscription;

  @override
  Future<void> close() async {
    await _devicesRepositorySubscription.cancel();
    super.close();
  }

  void deviceRegistries() {
    _devicesRepository.deviceRegistries(state.commandId);

    emit(state.copyWith(commandId: state.commandId + 1));
  }
}
