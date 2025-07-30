import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF38693C);
  static const Color onPrimary = Color(0xFFFFFFFF);

  static const Color primaryHovered = Color(0xFF38693C);
  static const Color primaryFocused = Color(0xFF38693C);
  static const Color primaryPressed = Color(0xFF38693C);

  static const Color primaryDisabled = Color(0x1A1D1B20);
  static const Color onPrimaryDisabled = Color(0xFF1D1B20);

  static const Color secondary = Color(0xFFCAC4D0);
  static const Color onSecondary = Color(0xFF49454F);
  static const Color secondaryBorder = Color(0xFFCAC4D0);

  static  Color secondaryHovered = secondary.withOpacity(0.08);
  static  Color secondaryFocused = secondary.withOpacity(0.1);
  static  Color secondaryPressed = secondary.withOpacity(0.08);

  static Color secondaryDisabled = secondary.withOpacity(0.1);
  static  Color onSecondaryDisabled = onSecondary;
}


