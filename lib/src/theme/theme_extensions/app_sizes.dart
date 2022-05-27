import 'package:flutter/material.dart';

@immutable
class AppSizes extends ThemeExtension<AppSizes> {
  const AppSizes({
    required this.p4,
    required this.p8,
    required this.p12,
    required this.p16,
    required this.p20,
    required this.p24,
    required this.p32,
    required this.p64,
  });

  final double p4;
  final double p8;
  final double p12;
  final double p16;
  final double p20;
  final double p24;
  final double p32;
  final double p64;

  static const defaultSizes = AppSizes(
    p4: 4.0,
    p8: 8.0,
    p12: 12.0,
    p16: 16.0,
    p20: 20.0,
    p24: 24.0,
    p32: 32.0,
    p64: 64.0,
  );

  @override
  ThemeExtension<AppSizes> copyWith({
    double? p4,
    double? p8,
    double? p12,
    double? p16,
    double? p20,
    double? p24,
    double? p32,
    double? p64,
  }) =>
      AppSizes(
        p4: p4 ?? this.p4,
        p8: p8 ?? this.p8,
        p12: p12 ?? this.p12,
        p16: p16 ?? this.p16,
        p20: p20 ?? this.p20,
        p24: p24 ?? this.p24,
        p32: p32 ?? this.p32,
        p64: p64 ?? this.p64,
      );

  @override
  ThemeExtension<AppSizes> lerp(ThemeExtension<AppSizes>? other, double t) {
    return this;
  }
}
