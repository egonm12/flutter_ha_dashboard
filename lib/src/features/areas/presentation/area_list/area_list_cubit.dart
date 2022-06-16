import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ha_dashboard/src/features/areas/data/areas_repository.dart';
import 'package:flutter_ha_dashboard/src/features/areas/domain/area_registries/area_registries.dart';
import 'package:flutter_ha_dashboard/src/features/devices/domain/device_registries/device_registries.dart';
import 'package:flutter_ha_dashboard/src/features/devices/presentation/device_list/device_list_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/presentation/entity_list/entity_list_cubit.dart';

part 'area_list_state.dart';

class AreaListCubit extends Cubit<AreaListState> {
  AreaListCubit({
    required AreasRepository areasRepository,
    required DeviceListCubit deviceListCubit,
    required EntityListCubit entityListCubit,
  })  : _areasRepository = areasRepository,
        _deviceListCubit = deviceListCubit,
        _entityListCubit = entityListCubit,
        super(const AreaListState(
          commandId: 1,
          areas: [],
          devices: [],
          entities: [],
        )) {
    _areasRepositorySubscription = _areasRepository.stream.listen((event) {
      try {
        final areas = AreaRegistriesDTO.fromJson(event).result;

        emit(
          state.copyWith(
            areas: areas,
          ),
        );
        print(areas);
      } catch (e) {
        print(e);
      }
    });
    _deviceListSubscription = _deviceListCubit.stream.listen((deviceListState) {
      emit(state.copyWith(devices: deviceListState.devices));
    });
    _entityListSubscription = _entityListCubit.stream.listen((entityListState) {
      emit(state.copyWith(entities: entityListState.entities));
    });
  }

  late final AreasRepository _areasRepository;
  late final DeviceListCubit _deviceListCubit;
  late final EntityListCubit _entityListCubit;

  late final StreamSubscription<Map<String, dynamic>>
      _areasRepositorySubscription;
  late final StreamSubscription<DeviceListState> _deviceListSubscription;
  late final StreamSubscription<EntityListState> _entityListSubscription;

  @override
  Future<void> close() async {
    await _areasRepositorySubscription.cancel();
    await _deviceListSubscription.cancel();
    await _entityListSubscription.cancel();
    super.close();
  }

  void areaRegistries() {
    _areasRepository.areaRegistries(state.commandId);
  }
}
