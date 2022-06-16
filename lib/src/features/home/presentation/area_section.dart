import 'package:flutter/material.dart';

import 'package:flutter_ha_dashboard/src/features/devices/domain/device_registries/device_registries.dart';
import 'package:flutter_ha_dashboard/src/features/entities/domain/entity_registries.dart';

class AreaSection extends StatelessWidget {
  const AreaSection({
    required this.areaName,
    required this.devices,
    required this.entities,
    super.key,
  });

  final String areaName;
  final List<DeviceRegistry> devices;
  final List<EntityRegistry> entities;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          areaName,
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
