import 'package:flutter/material.dart';

import 'package:flutter_ha_dashboard/src/theme/base_theme.dart';
import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_colors.dart';
import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_sizes.dart';

final ThemeData darkTheme = baseTheme.copyWith(
  primaryColor: AppColors.dark.primaryColor,
  primaryColorLight: AppColors.dark.primaryLightColor,
  primaryColorDark: AppColors.dark.primaryDarkColor,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.dark.primaryColor,
    foregroundColor: AppColors.brightGray,
  ),
  scaffoldBackgroundColor: AppColors.dark.secondaryColor,
  extensions: <ThemeExtension>[
    AppSizes.defaultSizes,
    AppColors.dark,
  ],
  brightness: Brightness.dark,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: baseTheme.elevatedButtonTheme.style!.copyWith(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) => AppColors.dark.primaryColor,
      ),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) => AppColors.brightGray,
      ),
    ),
  ),
);
