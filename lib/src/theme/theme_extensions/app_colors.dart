import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.primaryColor,
    required this.primaryLightColor,
    required this.primaryDarkColor,
    required this.secondaryColor,
    required this.secondaryLightColor,
    required this.secondaryDarkColor,
  });

  final Color primaryColor;
  final Color primaryLightColor;
  final Color primaryDarkColor;
  final Color secondaryColor;
  final Color secondaryLightColor;
  final Color secondaryDarkColor;

  static const light = AppColors(
    primaryColor: _baseDarkGrey,
    primaryLightColor: _baseGrey,
    primaryDarkColor: _baseBlack,
    secondaryColor: _baseLightGrey,
    secondaryLightColor: _baseWhite,
    secondaryDarkColor: _baseBlueGrey,
  );

  static const dark = AppColors(
    primaryColor: gunMetal,
    primaryLightColor: stormCloud,
    primaryDarkColor: richBlack,
    secondaryColor: charcoal,
    secondaryLightColor: darkElectricBlue,
    secondaryDarkColor: darkJungleGreen,
  );

  @override
  ThemeExtension<AppColors> copyWith({
    Color? primaryColor,
    Color? primaryLightColor,
    Color? primaryDarkColor,
    Color? secondaryColor,
    Color? secondaryLightColor,
    Color? secondaryDarkColor,
  }) =>
      AppColors(
        primaryColor: primaryColor ?? this.primaryColor,
        primaryLightColor: primaryLightColor ?? this.primaryLightColor,
        primaryDarkColor: primaryDarkColor ?? this.primaryDarkColor,
        secondaryColor: secondaryColor ?? this.secondaryColor,
        secondaryLightColor: secondaryLightColor ?? this.secondaryLightColor,
        secondaryDarkColor: secondaryDarkColor ?? this.secondaryDarkColor,
      );

  @override
  ThemeExtension<AppColors> lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      primaryLightColor:
          Color.lerp(primaryLightColor, other.primaryLightColor, t)!,
      primaryDarkColor:
          Color.lerp(primaryDarkColor, other.primaryDarkColor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      secondaryLightColor:
          Color.lerp(secondaryLightColor, other.secondaryLightColor, t)!,
      secondaryDarkColor:
          Color.lerp(secondaryDarkColor, other.secondaryDarkColor, t)!,
    );
  }

  static const _baseDarkGrey = Color(0xFF263238);
  static const _baseGrey = Color(0xFF4F5B62);
  static const _baseBlack = Color(0xFF000A12);
  static const _baseLightGrey = Color(0xFFECEFF1);
  static const _baseBlueGrey = Color(0xFFBABDBE);
  static const _baseWhite = Color(0xFFFFFFFF);

  static const gunMetal = Color(0xFF382C26);
  static const charcoal = Color(0xFF37474F);
  static const darkElectricBlue = Color(0xFF62727b);
  static const darkJungleGreen = Color(0xFF102027);
  static const stormCloud = Color(0xFF4F5B62);
  static const richBlack = Color(0xFF000A12);
  static const brightGray = Color(0xFFECEFF1);
  static const gray = Color(0xFFBABDBE);
  static const white = Color(0xFFFFFFFF);
}
