import 'package:flutter/material.dart';

class AppTextStyles{
  static TextStyle primaryButton(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onPrimary,
      fontSize: Theme.of(context).textTheme.titleMedium?.fontSize ?? 16.0,
      fontWeight: FontWeight.w500,
      
    );
  }
}

