import 'package:flutter/material.dart';

import 'package:flutter_ha_dashboard/src/theme/base_theme.dart';
import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_colors.dart';
import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_sizes.dart';

final ThemeData lightTheme = baseTheme.copyWith(
  primaryColor: AppColors.light.primaryColor,
  primaryColorLight: AppColors.light.primaryLightColor,
  primaryColorDark: AppColors.light.primaryDarkColor,
  scaffoldBackgroundColor: AppColors.light.secondaryColor,
  extensions: <ThemeExtension<dynamic>>[
    AppSizes.defaultSizes,
    AppColors.light,
  ],
  brightness: Brightness.light,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: baseTheme.elevatedButtonTheme.style!.copyWith(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) => AppColors.light.primaryColor,
      ),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) => AppColors.light.secondaryLightColor,
      ),
    ),
  ),
);