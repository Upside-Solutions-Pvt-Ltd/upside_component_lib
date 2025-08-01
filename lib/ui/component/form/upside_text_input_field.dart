import 'dart:ui';

import 'package:upside_component_lib/config/default_values.dart';
import 'package:upside_component_lib/theme/app_colors.dart';
import 'package:upside_component_lib/ui/component/form/base_text_input_field.dart';

class UpsideTextInputField extends BaseTextInputField {
  const UpsideTextInputField({
    super.key,
    required super.label,
    required super.text,
    required super.onChanged,
  });

  @override
  Color getDisabledBorderColor() {
    return AppColors.textFieldDisabled;
  }

  @override
  Color getEnabledBorderColor() {
    return AppColors.textFieldEnabled;
  }

  @override
  Color getErrorBorderColor() {
    return AppColors.textFieldError;
  }

  @override
  Color getFocusedBorderColor() {
    return AppColors.textFieldFocused;
  }

  @override
  double getEnabledBorderWidth() {
    return TextFieldConstants.enabledTextFieldBorderWidth;
  }

  @override
  double getDisabledBorderWidth() {
    return TextFieldConstants.disabledTextFieldBorderWidth;
  }

  @override
  double getErrorBorderWidth() {
    return TextFieldConstants.errorTextFieldBorderWidth;
  }

  @override
  double getFocusedBorderWidth() {
    return TextFieldConstants.focusedTextFieldBorderWidth;
  }

  @override
  double getTextFieldBorderRadius() {
    return TextFieldConstants.textFieldRadius;
  }
}
