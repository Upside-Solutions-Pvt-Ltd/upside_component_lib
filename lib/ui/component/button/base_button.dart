import 'package:flutter/material.dart';

abstract class BaseButton extends StatelessWidget {
  final String label;
  final Widget leadingIcon;
  final Function()? onPressed;

  const BaseButton({
    super.key,
    required this.label,
    this.leadingIcon = const SizedBox.shrink(),
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        children: [
          leadingIcon,
          Text(label, style: getTextStyle()),
        ],
      ),
    );
  }

  Color getBackgroundColor();

  Color getForegroundColor();

  Color getBorderColor();

  double getBorderWidth();

  double getBorderRadius();

  double getPadding();

  TextStyle getTextStyle();

  Color getDisabledBackgroundColor();

  Color getDisabledForegroundColor();

  Color getDisabledBorderColor();

  double getDisabledBorderWidth();

  double getDisabledBorderRadius();
}
