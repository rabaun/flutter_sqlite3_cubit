import 'package:flutter/material.dart';

import 'dark_theme.dart';
import 'light_theme.dart';
import 'pink_theme.dart';

class AppTheme {
  static ThemeData light = lightTheme;
  static ThemeData dark = darkTheme;
  static ThemeData pink = buildShrineTheme();
}
