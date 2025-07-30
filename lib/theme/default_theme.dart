import 'package:flutter/material.dart';
import 'package:upside_component_lib/theme/app_colors.dart';

class AppTextStyles{
  static TextStyle primaryButton(BuildContext context) {
    return TextStyle(
      color: AppColors.onPrimary,
      fontSize: Theme.of(context).textTheme.titleMedium?.fontSize ?? 16.0,
      fontWeight: FontWeight.w500,
      
    );
  }

  static TextStyle secondaryButton(BuildContext context) {
    return TextStyle(
      color: AppColors.onSecondary,
      fontSize: Theme.of(context).textTheme.titleMedium?.fontSize ?? 16.0,
      fontWeight: FontWeight.w500,
      
    );
  }

  static TextStyle tertiaryButton(BuildContext context) {
    return TextStyle(
      color: AppColors.onTertiary,
      fontSize: Theme.of(context).textTheme.titleMedium?.fontSize ?? 16.0,
      fontWeight: FontWeight.w500,
      
    );
  }

  static TextStyle destructiveButton(BuildContext context) {
    return TextStyle(
      color: AppColors.onDestructive,
      fontSize: Theme.of(context).textTheme.titleMedium?.fontSize ?? 16.0,
      fontWeight: FontWeight.w500,

    );
  }
}

