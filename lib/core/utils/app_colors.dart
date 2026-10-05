import 'package:flutter/material.dart';

abstract final class AppColors {
  static const Color lightPrimary = Color(0xFF000000);
  static const Color lightSecondary = Color(0x993C3C43);
  static const Color lightTertiary = Color(0x4D3C3C43);
  static const Color lightQuaternary = Color(0x2E3C3C43);

  static const Color darkPrimary = Color(0xFFFFFFFF);
  static const Color darkSecondary = Color(0x99EBEBF5);
  static const Color darkTertiary = Color(0x4DEBEBF5);
  static const Color darkQuaternary = Color(0x2EEBEBF5);

  static const Color weatherLinearOneStart = Color(0xFF2E335A);
  static const Color weatherLinearOneEnd = Color(0xFF1C1B33);
  static const LinearGradient weatherLinearOne = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [weatherLinearOneStart, weatherLinearOneEnd],
  );

  static const Color weatherLinearTwoStart = Color(0xFF5936B4);
  static const Color weatherLinearTwoEnd = Color(0xFF362A84);
  static const LinearGradient weatherLinearTwo = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [weatherLinearTwoStart, weatherLinearTwoEnd],
  );

  static const Color weatherLinearThreeStart = Color(0xFF3658B1);
  static const Color weatherLinearThreeEnd = Color(0xFFC159EC);
  static const LinearGradient weatherLinearThree = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [weatherLinearThreeStart, weatherLinearThreeEnd],
  );

  static const Color weatherLinearFourStart = Color(0xFFAEC9FF);
  static const Color weatherLinearFourEnd = Color(0xFF083072);
  static const LinearGradient weatherLinearFour = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [weatherLinearFourStart, weatherLinearFourEnd],
  );

  static const Color weatherRadialStart = Color(0xFFF7CBFD);
  static const Color weatherRadialEnd = Color(0xFF7758D1);
  static const RadialGradient weatherRadial = RadialGradient(
    colors: [weatherRadialStart, weatherRadialEnd],
  );

  static const Color weatherAngular = Color(0xFF612FAB);

  static const Color weatherSolidPurple = Color(0xFF48319D);
  static const Color weatherSolidNavy = Color(0xFF1F1D47);
  static const Color weatherSolidMagenta = Color(0xFFC427FB);
  static const Color weatherSolidLavender = Color(0xFFE0D9FF);
}
