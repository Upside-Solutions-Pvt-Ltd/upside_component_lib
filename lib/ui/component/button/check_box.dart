import 'package:flutter/material.dart';
import 'package:upside_component_lib/theme/app_colors.dart';

class CheckBox extends StatelessWidget {
  final Function(bool?)? onChanged;
  const CheckBox({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: true,
      onChanged: onChanged,
      activeColor: AppColors.checkBoxActive,
      checkColor: AppColors.checkBoxInactive,
    );
  }
}
