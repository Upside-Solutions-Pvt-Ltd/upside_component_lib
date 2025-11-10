import 'package:flutter/material.dart';
import 'package:upside_component_lib/config/default_values.dart';

class Header extends StatelessWidget {
  final String headerText;
  final String subHeaderText;
  final IconData? icon;
  final bool centerAlign;

  const Header({
    super.key,
    required this.headerText,
    required this.subHeaderText,
    this.icon,
    this.centerAlign = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: centerAlign
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        icon != null ? Icon(icon, size: CustomHeaderConstants.iconSize) : SizedBox.shrink(),
        SizedBox(height: 20),
        Text(
          headerText,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
            fontWeight: FontWeight.w400,
          ),
          textAlign: centerAlign ? TextAlign.center : TextAlign.left,
        ),
        SizedBox(height: 15),
        Text(
          subHeaderText,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
            fontWeight: FontWeight.w400,
          ),
          textAlign: centerAlign ? TextAlign.center : TextAlign.left,
        ),
      ],
    );
  }
}
