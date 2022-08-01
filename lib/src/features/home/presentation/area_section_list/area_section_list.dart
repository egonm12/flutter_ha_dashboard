import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ha_dashboard/src/features/areas/domain/area_registries/area_registries.dart';
import 'package:flutter_ha_dashboard/src/features/devices/domain/device_registries/device_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_registries/entity_registries.dart';
import 'package:flutter_ha_dashboard/src/features/home/logic/area_section_list_cubit/area_section_list_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/home/presentation/area_section_list/area_section.dart';
import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_sizes.dart';

class AreaSectionList extends StatelessWidget {
  const AreaSectionList({Key? key}) : super(key: key);

  static BlocProvider<AreaSectionListCubit> create() =>
      BlocProvider<AreaSectionListCubit>(
        create: (context) => AreaSectionListCubit(),
        child: const AreaSectionList(),
      );

  @override
  Widget build(BuildContext context) {
    final List<AreaRegistry> areas =
        context.watch<AreaSectionListCubit>().state.areas;
    final List<DeviceRegistry> devices = [];
    final List<EntityRegistry> entities = [];

    final appSizes = Theme.of(context).extension<AppSizes>()!;

    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: appSizes.p8,
        ),
        itemBuilder: (context, index) {
          final area = areas[index];
          final areaDevices = <DeviceRegistry>[];
          final areaServices = <DeviceRegistry>[];

          for (final device in devices) {
            if (device.areaId == area.areaId) {
              if (device.entryType == 'service') {
                areaServices.add(device);
              } else {
                areaDevices.add(device);
              }
            }
          }

          return AreaSection(
            areaName: area.name,
            devices: devices,
            entities: entities,
          );
        },
        itemCount: areas.length,
      ),
    );
  }
}
