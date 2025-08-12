import 'package:flutter/material.dart';

class Header {
  static Widget customHeader({
    required BuildContext context,
    required String headerText,
    required String subHeaderText,
    required IconData icon,
    VoidCallback? onIconPressed,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 64, color: Color(0xFF7E84A3)),
        SizedBox(height: 10),
        Text(
          headerText,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 5),
        Text(
          subHeaderText,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
