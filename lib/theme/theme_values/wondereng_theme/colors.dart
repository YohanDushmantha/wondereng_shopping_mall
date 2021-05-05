import 'dart:ui';

import 'package:wondereng_shopping_mall/theme/theme_values/base_colors.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/color_codes.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/theme_color_variation.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:wondereng_shopping_mall/helpers/extensions/color_extension.dart';

class Colors extends BaseColors {
  @override
  ThemeColorVariation themeColorVariation = ThemeColorVariation(
      primary: ColorCodes.black,
      warning: ColorCodes.orange,
      error: ColorCodes.red,
      success: ColorCodes.green,
      info: ColorCodes.gray);

  @override
  MaterialColor primarySwatch = ColorCodes.green.createMaterialColor();

  @override
  Brightness? accentColorBrightness;

  @override
  Color? backgroundColor;

  @override
  Color? bottomAppBarColor;

  @override
  Brightness? brightness;

  @override
  Color? buttonColor;

  @override
  Color? canvasColor;

  @override
  Color? cardColor;

  @override
  Color? dialogBackgroundColor;

  @override
  Color? disabledColor;

  @override
  Color? dividerColor;

  @override
  Color? errorColor;

  @override
  Color? focusColor;

  @override
  Color? highlightColor;

  @override
  Color? hintColor;

  @override
  Color? hoverColor;

  @override
  Color? indicatorColor;

  @override
  Brightness? primaryColorBrightness;

  @override
  Color? primaryColorDark;

  @override
  Color? primaryColorLight;

  @override
  Color? scaffoldBackgroundColor;

  @override
  Color? secondaryHeaderColor;

  @override
  Color? selectedRowColor;

  @override
  Color? shadowColor;

  @override
  Color? splashColor;

  @override
  Color? toggleableActiveColor;

  @override
  Color? unselectedWidgetColor;

  @override
  Color accentColor = ColorCodes.gray;

  @override
  Color primaryColor = ColorCodes.green;

  @override
  Color appBarBackBtnColor = ColorCodes.green;

  @override
  Color appBarBgColor = ColorCodes.white;

  @override
  Color appBarTextColor = ColorCodes.gray;

  @override
  Color materialBarButtonDefaultTextColor = ColorCodes.white;

  @override
  Color defaultTextFieldBorderColor = ColorCodes.gray;

  @override
  Color defaultTextFieldErrorBorderColor = ColorCodes.red;

  @override
  Color defaultTextFieldErrorTextColor = ColorCodes.red;

  @override
  Color defaultTextFieldFocusedBorderColor = ColorCodes.green;

  @override
  Color defaultTextFieldLabelColor = ColorCodes.gray;

  @override
  Color defaultTextFieldTextColor = ColorCodes.gray;
}
