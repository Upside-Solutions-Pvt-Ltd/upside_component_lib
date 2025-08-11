import 'package:flutter/material.dart';

class ModalDatePicker extends StatefulWidget {
  const ModalDatePicker({super.key});

  @override
  State<ModalDatePicker> createState() => _ModalDatePickerState();
}

class _ModalDatePickerState extends State<ModalDatePicker> {
  TimeOfDay? selectedTime;

  Future<void> _pickTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
      builder: (context, child) {
        return Theme(data: ThemeData.light(), child: child!);
      },
    );

    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _pickTime,
              child: const Text('Pick Time'),
            ),
            if (selectedTime != null)
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Selected Time: ${selectedTime!.format(context)}',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
