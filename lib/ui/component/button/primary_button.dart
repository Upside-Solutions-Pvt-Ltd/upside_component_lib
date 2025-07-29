import 'package:flutter/material.dart';
import 'package:upside_component_lib/config/default_values.dart';
import 'package:upside_component_lib/theme/app_colors.dart';
import 'package:upside_component_lib/ui/component/button/base_button.dart';

class PrimaryButton extends BaseButton {
  PrimaryButton({
    required super.label,
    required super.onPressed,
    super.leadingIcon,
  });

  @override
  Color getBackgroundColor() {
    return AppColors.primary;
  }

  @override
  Color getBorderColor() {
    // TODO: implement getBorderColor
    throw UnimplementedError();
  }

  @override
  double getBorderRadius() {
    return ButtonConstants.defaultRadius;
  }

  @override
  double getBorderWidth() {
    // TODO: implement getDisabledBorderWidth
    throw UnimplementedError();
  }

  @override
  Color getDisabledBackgroundColor() {
    return AppColors.primaryDisabled;
  }

  @override
  Color getDisabledBorderColor() {
    // TODO: implement getDisabledBorderColor
    throw UnimplementedError();
  }

  @override
  double getDisabledBorderRadius() {
    return ButtonConstants.defaultRadius;
  }

  @override
  double getDisabledBorderWidth() {
    // TODO: implement getDisabledBorderWidth
    throw UnimplementedError();
  }

  @override
  Color getDisabledForegroundColor() {
    return AppColors.onPrimaryDisabled;
  }

  @override
  Color getForegroundColor() {
    return AppColors.onPrimary;
  }

  @override
  EdgeInsets getPadding() {
    return ButtonConstants.buttonPadding;
  }

  @override
  TextStyle getTextStyle() {
    // TODO: implement getTextStyle
    throw UnimplementedError();
  }

  @override
  Color getFocusedBackgroundColor() {
    return AppColors.primaryFocused;
  }

  @override
  Color getHoverdBackgroundColor() {
    return AppColors.primaryHovered;
  }

  @override
  Color getPressedBackgroundColor() {
    return AppColors.primaryPressed;
  }
}
