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
      ),
      onChanged: onChanged,
      controller: TextEditingController(text: text),
    );
  }
}
