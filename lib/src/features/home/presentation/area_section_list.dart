import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ha_dashboard/src/features/areas/presentation/area_list/area_list_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/devices/domain/device_registries/device_registries.dart';
import 'package:flutter_ha_dashboard/src/features/home/presentation/area_section.dart';
import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_sizes.dart';

class AreaSectionList extends StatelessWidget {
  const AreaSectionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AreaListCubit>().state;
    final areas = state.areas;
    final devices = state.devices;
    final entities = state.entities;

    final appSizes = Theme.of(context).extension<AppSizes>()!;

    return SizedBox(
      width: double.infinity,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: appSizes.p16),
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
