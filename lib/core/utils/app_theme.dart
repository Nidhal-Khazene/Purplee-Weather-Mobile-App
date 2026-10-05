import 'package:flutter/material.dart';

import 'app_fonts.dart';

abstract final class AppTheme {
  static final ThemeData primary = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    fontFamily: AppFonts.primary,
  );
}
