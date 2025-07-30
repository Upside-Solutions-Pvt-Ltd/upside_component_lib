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
      style: ElevatedButton.styleFrom(
        backgroundColor: getBackgroundColor(),
        foregroundColor: getForegroundColor(),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getBorderRadius()),
        ),
        padding: getPadding(),
        textStyle: getTextStyle(context),
        iconSize: getIconSize(),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          leadingIcon,
          Text(label, style: getTextStyle(context)),
        ],
      ),
    );
  }

  Color getBackgroundColor();

  Color getForegroundColor();

  Color getBorderColor();

  double getBorderWidth();

  double getBorderRadius();

  EdgeInsets getPadding();

  TextStyle getTextStyle(BuildContext context);

  Color getDisabledBackgroundColor();

  Color getDisabledForegroundColor();

  Color getDisabledBorderColor();

  double getDisabledBorderWidth();

  double getDisabledBorderRadius();

  Color getHoverdBackgroundColor();

  Color getFocusedBackgroundColor();

  Color getPressedBackgroundColor();

  double getIconSize();
}
