import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ModalDatePicker extends StatefulWidget {
  const ModalDatePicker({super.key});

  @override
  State<ModalDatePicker> createState() => _ModalDatePickerState();
}

class _ModalDatePickerState extends State<ModalDatePicker> {
  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: _focusedDay,
      firstDay: DateTime.now().subtract(const Duration(days: 365)),
      lastDay: DateTime.now().add(const Duration(days: 365)),
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },

      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          if (!isSameDay(_selectedDay, selectedDay)) {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          }
        });
      },
      calendarStyle: const CalendarStyle(
        selectedDecoration: BoxDecoration(
          color: Color(0xFF6750A4),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
