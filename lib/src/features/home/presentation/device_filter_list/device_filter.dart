import 'package:flutter/material.dart';

import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_sizes.dart';

class DeviceFilter extends StatelessWidget {
  const DeviceFilter({
    required this.avatar,
    required this.title,
    required this.subtitle,
    super.key,
  });

  final Widget avatar;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final appSizes = Theme.of(context).extension<AppSizes>()!;

    return FilterChip(
      avatar: avatar,
      label: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
      labelPadding: EdgeInsets.symmetric(horizontal: appSizes.p4),
      padding: EdgeInsets.all(appSizes.p12),
      onSelected: (_) {},
    );
  }
}
