import 'package:flutter/material.dart';

class ArtemTheme {
  final Brightness brightness;

  ArtemTheme(this.brightness);

  get themeData {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF1D6D21),
        brightness: brightness,
      ),
    );
  }
}
