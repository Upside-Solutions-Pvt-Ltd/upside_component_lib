import 'package:flutter/material.dart';
import 'package:upside_component_lib/config/default_values.dart';
import 'package:upside_component_lib/theme/app_colors.dart';

class Header extends StatelessWidget {
  final String headerText;
  final String subHeaderText;
  final IconData icon;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final Color iconColor;
  final double iconToHeaderSpacing;
  final TextAlign headerTextAlign;
  final TextAlign subHeaderTextAlign;

  const Header({
    super.key,
    required this.headerText,
    required this.subHeaderText,
    required this.icon,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.iconColor = AppColors.customHeaderIcon,
    this.iconToHeaderSpacing = 40,
    this.headerTextAlign = TextAlign.center,
    this.subHeaderTextAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Icon(icon, size: CustomHeaderConstants.iconSize, color: iconColor),
        SizedBox(height: iconToHeaderSpacing),
        Text(
          headerText,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
            fontWeight: FontWeight.w400,
          ),
          textAlign: headerTextAlign,
        ),
        SizedBox(height: 15),
        Text(
          subHeaderText,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
            fontWeight: FontWeight.w400,
          ),
          textAlign: subHeaderTextAlign,
        ),
      ],
    );
  }
}
