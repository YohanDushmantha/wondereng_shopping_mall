import 'package:wondereng_shopping_mall/theme/theme_values/theme_color_variation.dart';
import 'package:flutter/material.dart';

abstract class BaseColors {
  abstract ThemeColorVariation themeColorVariation;

  ///
  /// APP BAR COLOR - START
  ///
  abstract Color appBarTextColor;
  abstract Color appBarBackBtnColor;
  abstract Color appBarBgColor;

  ///
  /// APP BAR COLOR - END
  ///

  ///
  /// MATERIAL BAR BUTTON - START
  ///
  abstract Color materialBarButtonDefaultTextColor;

  ///
  /// MATERIAL BAR BUTTON - END
  ///

  ///
  /// DEFAULT TEXT FIELD - START
  ///
  abstract Color defaultTextFieldLabelColor;
  abstract Color defaultTextFieldTextColor;
  abstract Color defaultTextFieldErrorTextColor;
  abstract Color defaultTextFieldBorderColor;
  abstract Color defaultTextFieldFocusedBorderColor;
  abstract Color defaultTextFieldErrorBorderColor;

  ///
  /// DEFAULT TEXT FIELD - END
  ///

  ///
  /// BASE THEME COLORS - START
  ///
  abstract Color primaryColor;
  abstract Color accentColor;
  abstract MaterialColor primarySwatch;
  abstract Brightness? brightness;
  abstract Brightness? primaryColorBrightness;
  abstract Color? primaryColorLight;
  abstract Color? primaryColorDark;
  abstract Brightness? accentColorBrightness;
  abstract Color? canvasColor;
  abstract Color? shadowColor;
  abstract Color? scaffoldBackgroundColor;
  abstract Color? bottomAppBarColor;
  abstract Color? cardColor;
  abstract Color? dividerColor;
  abstract Color? focusColor;
  abstract Color? hoverColor;
  abstract Color? highlightColor;
  abstract Color? splashColor;
  abstract Color? selectedRowColor;
  abstract Color? unselectedWidgetColor;
  abstract Color? disabledColor;
  abstract Color? buttonColor;
  abstract Color? secondaryHeaderColor;
  abstract Color? backgroundColor;
  abstract Color? dialogBackgroundColor;
  abstract Color? indicatorColor;
  abstract Color? hintColor;
  abstract Color? errorColor;
  abstract Color? toggleableActiveColor;

  ///
  /// BASE THEME COLORS - END
  ///

}
