import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF38693C);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static Color primaryHovered = primary.withOpacity(0.08);
  static Color primaryFocused = primary.withOpacity(0.1);
  static Color primaryPressed = primary.withOpacity(0.08);
  static Color primaryDisabled = onPrimary.withOpacity(0.1);
  static const Color onPrimaryDisabled = Color(0xFF1D1B20);

  static const Color secondary = Color(0xFFCAC4D0);
  static const Color onSecondary = Color(0xFF49454F);
  static const Color secondaryBorder = Color(0xFFCAC4D0);
  static Color secondaryHovered = secondary.withOpacity(0.08);
  static Color secondaryFocused = secondary.withOpacity(0.1);
  static Color secondaryPressed = secondary.withOpacity(0.08);
  static Color secondaryDisabled = secondary.withOpacity(0.1);
  static Color onSecondaryDisabled = onSecondary;

  static const Color tertiary = Color(0xFFE8DEF8);
  static const Color onTertiary = Color(0xFF4A4459);
  static Color tertiaryHovered = tertiary.withOpacity(0.08);
  static Color tertiaryFocused = tertiary.withOpacity(0.1);
  static Color tertiaryPressed = tertiary.withOpacity(0.08);
  static Color tertiaryDisabled = tertiary.withOpacity(0.1);
  static const Color onTertiaryDisabled = Color(0xFF1D1B20);

  static const Color destructive = Color(0xFFBA1A1A);
  static const Color onDestructive = Color(0xFFFFFFFF);
  static Color destructiveHovered = destructive.withOpacity(0.08);
  static Color destructiveFocused = destructive.withOpacity(0.1);
  static Color destructivePressed = destructive.withOpacity(0.08);
  static const Color destructiveDisabled = Color(0x1A1D1B20);
  static const Color onDestructiveDisabled = Color(0xFF1D1B20);

  static const Color textFieldEnabled = Color(0xFF1D1B20);
  static const Color textFieldFocused = Color(0xFF6750A4);
  static const Color textFieldError = Color(0xFFB3261E);
  static const Color textFieldDisabled = Color(0xFF1D1B20);

  static const Color calendarFocused = Color(0xFF6750A4);
  static const Color calendarFocusedBorder = Color(0xFF6750A4);

  static const Color checkBoxActive = Color(0xFF6750A4);
  static const Color checkBoxInactive = Color(0xFFFFFFFF);
}
