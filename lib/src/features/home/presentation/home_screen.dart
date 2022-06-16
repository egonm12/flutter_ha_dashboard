import 'package:flutter/material.dart';

import 'package:flutter_ha_dashboard/src/features/home/presentation/area_section_list.dart';
import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSizes = Theme.of(context).extension<AppSizes>()!;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: appSizes.p16),
        child: Column(
          children: const [
            Expanded(child: AreaSectionList()),
          ],
        ),
      ),
    );
  }
}
