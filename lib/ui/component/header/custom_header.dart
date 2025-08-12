import 'package:flutter/material.dart';
import 'package:upside_component_lib/config/default_values.dart';
import 'package:upside_component_lib/theme/app_colors.dart';

class Header {
  static Widget customHeader({
    required BuildContext context,
    required String headerText,
    required String subHeaderText,
    required IconData icon,
    VoidCallback? onIconPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.all(CustomHeaderConstants.headerPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onIconPressed,
            child: Icon(
              icon,
              size: CustomHeaderConstants.iconSize,
              color: AppColors.customHeaderIcon,
            ),
          ),
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
      ),
    );
  }
}
