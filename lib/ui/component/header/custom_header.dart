import 'package:flutter/material.dart';
import 'package:upside_component_lib/config/default_values.dart';
import 'package:upside_component_lib/theme/app_colors.dart';

class Header extends StatelessWidget {
  final String headerText;
  final String subHeaderText;
  final IconData icon;
  final bool mainAxisAlignmentCenter;
  final bool crossAxisAlignmentCenter;
  final Color iconColor;
  final double iconToHeaderSpacing;
  final bool headerTextAlignCenter;
  final bool subHeaderTextAlignCenter;

  const Header({
    super.key,
    required this.headerText,
    required this.subHeaderText,
    required this.icon,
    this.mainAxisAlignmentCenter = true,
    this.crossAxisAlignmentCenter = true,
    this.iconColor = AppColors.customHeaderIcon,
    this.iconToHeaderSpacing = 40,
    this.headerTextAlignCenter = true,
    this.subHeaderTextAlignCenter = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignmentCenter
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignmentCenter
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Icon(icon, size: CustomHeaderConstants.iconSize, color: iconColor),
        SizedBox(height: iconToHeaderSpacing),
        Text(
          headerText,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
            fontWeight: FontWeight.w400,
          ),
          textAlign: headerTextAlignCenter ? TextAlign.center : TextAlign.left,
        ),
        SizedBox(height: 15),
        Text(
          subHeaderText,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
            fontWeight: FontWeight.w400,
          ),
          textAlign: subHeaderTextAlignCenter
              ? TextAlign.center
              : TextAlign.left,
        ),
      ],
    );
  }
}
