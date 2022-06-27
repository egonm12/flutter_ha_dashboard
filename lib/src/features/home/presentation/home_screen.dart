import 'package:flutter/material.dart';

import 'package:flutter_ha_dashboard/src/features/home/presentation/device_filter_list/device_filter_list.dart';
import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_sizes.dart';
import 'package:flutter_ha_dashboard/src/widgets/app_bar/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSizes = Theme.of(context).extension<AppSizes>()!;

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: appSizes.p12,
          horizontal: appSizes.p16,
        ),
        child: Column(
          children: [
            DeviceFilterList.create(),
            SizedBox(height: appSizes.p12),
            // const Expanded(child: AreaSectionList()),
          ],
        ),
      ),
    );
  }
}
