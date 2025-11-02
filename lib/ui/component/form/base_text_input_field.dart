import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class BaseTextInputField extends StatelessWidget {
  final String label;
  final String text;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  final Function(String val) onChanged;

  BaseTextInputField({
    super.key,
    required this.label,
    required this.text,
    this.controller,
    this.keyboardType = TextInputType.text,
    required this.onChanged,
    this.validator,
  });

  final phoneMaskFormatter = MaskTextInputFormatter(
    mask: '+94 ## ### ####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      inputFormatters: keyboardType == TextInputType.phone
          ? [phoneMaskFormatter]
          : keyboardType == TextInputType.number
          ? [FilteringTextInputFormatter.digitsOnly]
          : [],
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(getTextFieldBorderRadius()),
          borderSide: BorderSide(
            width: getEnabledBorderWidth(),
            color: getEnabledBorderColor(),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(getTextFieldBorderRadius()),
          borderSide: BorderSide(
            color: getFocusedBorderColor(),
            width: getFocusedBorderWidth(),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(getTextFieldBorderRadius()),
          borderSide: BorderSide(
            color: getErrorBorderColor(),
            width: getErrorBorderWidth(),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(getTextFieldBorderRadius()),
          borderSide: BorderSide(
            color: getErrorBorderColor(),
            width: getErrorBorderWidth(),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(getTextFieldBorderRadius()),
          borderSide: BorderSide(
            color: getDisabledBorderColor(),
            width: getDisabledBorderWidth(),
          ),
        ),
      ),
      onChanged: onChanged,
      controller: controller,
    );
  }

  Color getEnabledBorderColor();

  Color getFocusedBorderColor();

  Color getErrorBorderColor();

  Color getDisabledBorderColor();

  double getEnabledBorderWidth();

  double getFocusedBorderWidth();

  double getErrorBorderWidth();

  double getDisabledBorderWidth();

  double getTextFieldBorderRadius();
}
