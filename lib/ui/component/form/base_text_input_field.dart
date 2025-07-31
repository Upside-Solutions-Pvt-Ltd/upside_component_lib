import 'package:flutter/material.dart';

abstract class BaseTextInputField extends StatelessWidget {
  final String label;
  final String text;
  final Function(String val) onChanged;

  const BaseTextInputField({
    super.key,
    required this.label,
    required this.text,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: getEnabledBorderWidth(),
            color: getEnabledBorderColor(),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: getFocusedBorderColor(),width: getFocusedBorderWidth(),

        ),),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: getErrorBorderColor(), width: getErrorBorderWidth()),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: getDisabledBorderColor(), width: getDisabledBorderWidth()),
        ),
      ),
      onChanged: onChanged,
      controller: TextEditingController(text: text),
    );
  }

  Color getEnabledBorderColor();

  Color getFocusedBorderColor();

  Color getErrorBorderColor();

  Color getDisabledBorderColor();

  double getEnabledBorderWidth();

  double getFocusedBorderWidth() ;

  double getErrorBorderWidth() ;
  
  double getDisabledBorderWidth() ;

}
