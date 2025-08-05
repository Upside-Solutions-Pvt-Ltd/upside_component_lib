import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ModalDatePicker extends StatelessWidget {
  const ModalDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime.now().subtract(const Duration(days: 365)),
      lastDay: DateTime.now().add(const Duration(days: 365)),
    );
  }
}