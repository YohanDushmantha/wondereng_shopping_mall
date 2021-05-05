import 'package:wondereng_shopping_mall/theme/theme_values/base_components_theme_data.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/colors.dart'
    as theme_colors;
import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/fonts.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/text_themes.dart';
import 'package:flutter/material.dart';

class ComponentsThemeData extends BaseComponentsThemeData {
  ComponentsThemeData({
    required this.colors,
    required this.fonts,
    required this.textThemes,
  });

  final theme_colors.Colors colors;
  final Fonts fonts;
  final TextThemes textThemes;

  @override
  IconThemeData? get accentIconTheme {
    return IconThemeData();
  }

  @override
  AppBarTheme? get appBarTheme {
    return AppBarTheme(
      centerTitle: true,
      backgroundColor: colors.appBarBgColor,
      iconTheme: IconThemeData(color: colors.appBarBackBtnColor),
      textTheme: TextTheme(
          headline6: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: fonts.appBarTitleFontSize,
              color: colors.appBarTextColor)),
    );
  }

  @override
  MaterialBannerThemeData? get bannerTheme {
    return MaterialBannerThemeData();
  }

  @override
  BottomAppBarTheme? get bottomAppBarTheme {
    return BottomAppBarTheme();
  }

  @override
  BottomNavigationBarThemeData? get bottomNavigationBarTheme {
    return BottomNavigationBarThemeData();
  }

  @override
  BottomSheetThemeData? get bottomSheetTheme {
    return BottomSheetThemeData();
  }

  @override
  ButtonBarThemeData? get buttonBarTheme {
    return ButtonBarThemeData();
  }

  @override
  CardTheme? get cardTheme {
    return CardTheme();
  }

  @override
  CheckboxThemeData? get checkboxTheme {
    return CheckboxThemeData();
  }

  @override
  ChipThemeData? get chipTheme {
    return null;
  }

  @override
  ColorScheme? get colorScheme {
    return null;
  }

  @override
  DataTableThemeData? get dataTableTheme {
    return null;
  }

  @override
  DialogTheme? get dialogTheme {
    return null;
  }

  @override
  DividerThemeData? get dividerTheme {
    return null;
  }

  @override
  ElevatedButtonThemeData? get elevatedButtonTheme {
    return null;
  }

  @override
  FloatingActionButtonThemeData? get floatingActionButtonTheme {
    return null;
  }

  @override
  IconThemeData? get iconThemeData {
    return null;
  }

  @override
  InputDecorationTheme? get inputDecorationTheme {
    return null;
  }

  @override
  MaterialTapTargetSize? get materialTapTargetSize {
    return null;
  }

  @override
  NavigationRailThemeData? get navigationRailTheme {
    return null;
  }

  @override
  OutlinedButtonThemeData? get outlinedButtonTheme {
    return null;
  }

  @override
  PageTransitionsTheme? get pageTransitionsTheme {
    return null;
  }

  @override
  TargetPlatform? get platform {
    return null;
  }

  @override
  PopupMenuThemeData? get popupMenuTheme {
    return null;
  }

  @override
  IconThemeData? get primaryIconTheme {
    return null;
  }

  @override
  RadioThemeData? get radioTheme {
    return null;
  }

  @override
  ScrollbarThemeData? get scrollbarTheme {
    return null;
  }

  @override
  SliderThemeData? get sliderTheme {
    return null;
  }

  @override
  SnackBarThemeData? get snackBarTheme {
    return null;
  }

  @override
  SwitchThemeData? get switchTheme {
    return null;
  }

  @override
  TabBarTheme? get tabBarTheme {
    return null;
  }

  @override
  TextButtonThemeData? get textButtonTheme {
    return null;
  }

  @override
  TextSelectionThemeData? get textSelectionTheme {
    return null;
  }

  @override
  TimePickerThemeData? get timePickerTheme {
    return null;
  }

  @override
  TooltipThemeData? get tooltipTheme {
    return null;
  }

  @override
  Typography? get typography {
    return null;
  }

  @override
  ToggleButtonsThemeData? get toggleButtonsTheme {
    return null;
  }

  @override
  ButtonThemeData? get getbuttonTheme {
    return null;
  }
}
