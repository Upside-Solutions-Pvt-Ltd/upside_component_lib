import 'package:flutter/material.dart';
import 'package:upside_component_lib/ui/component/calendar/modal_date_picker.dart';

class ModalDataPickerScreen extends StatelessWidget {
  const ModalDataPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ModalDatePicker(),
            ),
          ],
        ),
      ),
    );
  }
}
