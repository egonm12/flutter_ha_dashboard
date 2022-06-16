import 'package:flutter/material.dart';

import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_colors.dart';
import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_sizes.dart';
import 'package:flutter_ha_dashboard/src/theme/themes/text_theme.dart';

final ThemeData baseTheme = ThemeData(
  fontFamily: 'Montserrat',
  primaryColor: AppColors.light.primaryColor,
  primaryColorLight: AppColors.light.primaryLightColor,
  primaryColorDark: AppColors.light.primaryDarkColor,
  scaffoldBackgroundColor: AppColors.light.secondaryColor,
  textTheme: textTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (Set<MaterialState> states) => const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        EdgeInsets.symmetric(
          vertical: AppSizes.defaultSizes.p12,
          horizontal: AppSizes.defaultSizes.p24,
        ),
      ),
    ),
  ),
);
