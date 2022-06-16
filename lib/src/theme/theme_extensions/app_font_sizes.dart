import 'package:flutter/material.dart';

@immutable
class AppFontSizes extends ThemeExtension<AppFontSizes> {
  const AppFontSizes({
    required this.xxs,
    required this.xs,
    required this.s,
    required this.m,
    required this.l,
    required this.xl,
    required this.xxl,
  });

  final double xxs;
  final double xs;
  final double s;
  final double m;
  final double l;
  final double xl;
  final double xxl;

  static const defaultSizes = AppFontSizes(
    xxs: 4.0,
    xs: 8.0,
    s: 12.0,
    m: 16.0,
    l: 20.0,
    xl: 24.0,
    xxl: 28.0,
  );

  @override
  // ignore: long-parameter-list
  ThemeExtension<AppFontSizes> copyWith({
    double? xxs,
    double? xs,
    double? s,
    double? m,
    double? l,
    double? xl,
    double? xxl,
  }) =>
      AppFontSizes(
        xxs: xxs ?? this.xxs,
        xs: xs ?? this.xs,
        s: s ?? this.s,
        m: m ?? this.m,
        l: l ?? this.l,
        xl: xl ?? this.xl,
        xxl: xxl ?? this.xxl,
      );

  @override
  ThemeExtension<AppFontSizes> lerp(
      ThemeExtension<AppFontSizes>? other, double t) {
    return this;
  }
}
