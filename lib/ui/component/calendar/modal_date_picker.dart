import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:upside_component_lib/theme/app_colors.dart';

class ModalDatePicker extends StatefulWidget {
  const ModalDatePicker({super.key});

  @override
  State<ModalDatePicker> createState() => _ModalDatePickerState();
}

class _ModalDatePickerState extends State<ModalDatePicker> {
  DateTime? _selectedDay = DateTime.now();
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
      calendarStyle: CalendarStyle(
        selectedDecoration: BoxDecoration(
          color: AppColors.calendarFocused,
          shape: BoxShape.circle,
        ),
        todayDecoration: _selectedDay == null
            ? BoxDecoration(color: Colors.transparent, shape: BoxShape.circle)
            : BoxDecoration(
                border: Border.all(color: AppColors.calendarFocusedBorder),
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
        todayTextStyle: _selectedDay == null
            ? TextStyle(color: Colors.white)
            : TextStyle(color: Colors.black),
      ),
    );
  }

  
}
