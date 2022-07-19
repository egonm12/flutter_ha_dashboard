import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_states/entity_states.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_type.dart';
import 'package:flutter_ha_dashboard/src/features/home/logic/device_filter_list_cubit/device_filter_list_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/home/presentation/device_filter_list/device_filter.dart';
import 'package:flutter_ha_dashboard/src/utils/build_context_extensions.dart';

class DeviceFilterList extends HookWidget {
  const DeviceFilterList({Key? key}) : super(key: key);

  static BlocProvider<DeviceFilterListCubit> create() =>
      BlocProvider<DeviceFilterListCubit>(
        create: (context) => DeviceFilterListCubit(),
        child: const DeviceFilterList(),
      );

  @override
  Widget build(BuildContext context) {
    final individualLights =
        context.watch<DeviceFilterListCubit>().state.individualLights;

    return Column(
      children: [
        Row(
          children: [
            if (individualLights.isNotEmpty)
              DeviceFilter(
                avatar: Icon(EntityType.light.icon),
                title: EntityType.light.title(context.translations),
                subtitle: EntityType.light.subtitle<int>(
                  context.translations,
                  individualLights
                      .where((element) => element.state == 'on')
                      .length,
                ),
              ),
          ],
        ),
      ],
    );
  }

  /// Returns the number of light entities that have the state 'on'
  static int countLightStateOn(List<EntityState> lights) =>
      lights.where((light) => light.state == 'on').length;
}
