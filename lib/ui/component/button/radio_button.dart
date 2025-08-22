import 'package:flutter/material.dart';
import 'package:upside_component_lib/theme/app_colors.dart';

class RadioButton<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final Function(T?)? onChanged;
  final Color? activeColor;

  const RadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    this.onChanged,
    this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Radio<T>(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        activeColor: AppColors.radioButtonActive,
      ),
    );
  }
}
