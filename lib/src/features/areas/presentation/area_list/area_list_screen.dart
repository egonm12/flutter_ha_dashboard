import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_ha_dashboard/src/features/devices/presentation/device_list/device_list_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/entities/presentation/entity_list/entity_list_cubit.dart';

class AreaListScreen extends HookWidget {
  const AreaListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('get devices'),
              onPressed: () =>
                  context.read<DeviceListCubit>().deviceRegistries(),
            ),
            ElevatedButton(
              child: const Text('get entities'),
              onPressed: () =>
                  context.read<EntityListCubit>().entityRegistries(),
            ),
          ],
        ),
      ),
    );
  }
}
