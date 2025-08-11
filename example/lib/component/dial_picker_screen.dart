import 'package:flutter/material.dart';
import 'package:upside_component_lib/ui/component/dial_picker/dial_picker.dart';

class DialPickerScreen extends StatelessWidget {
  const DialPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(width: 500, height: 500, child: DialPicker()),
          ],
        ),
      ),
    );
  }
}
