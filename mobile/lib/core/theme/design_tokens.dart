import 'package:flutter/material.dart';

abstract final class AppColors {
  static const primary = Color(0xFF315C4B);
  static const onPrimary = Color(0xFFFFFFFF);
  static const background = Color(0xFFF7F8F5);
  static const surface = Color(0xFFFFFFFF);
  static const ink = Color(0xFF202923);
  static const muted = Color(0xFF68736B);
  static const accent = Color(0xFFE9B765);
}

abstract final class AppSpacing {
  static const xs = 4.0;
  static const sm = 8.0;
  static const md = 16.0;
  static const lg = 24.0;
  static const xl = 32.0;
}

abstract final class AppRadius {
  static const card = 20.0;
  static const control = 14.0;
}
