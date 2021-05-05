import 'package:flutter/src/material/theme_data.dart';

import 'package:wondereng_shopping_mall/injection_container.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/base_colors.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/base_components_theme_data.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/base_fonts.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/base_text_themes.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/base_theme_config.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/colors.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/components_theme_data.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/fonts.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/text_themes.dart';

class ThemeConfig extends BaseThemeConfig {
  @override
  BaseColors colors = di<Colors>();

  @override
  BaseFonts fonts = di<Fonts>();

  @override
  BaseTextThemes textThemes = di<TextThemes>();

  @override
  BaseComponentsThemeData componentsThemeData = di<ComponentsThemeData>();

  @override
  ThemeData get theme {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: colors.primaryColor,
        primarySwatch: colors.primarySwatch,
        accentColor: colors.accentColor,
        appBarTheme: componentsThemeData.appBarTheme,
        textTheme: textThemes.textTheme,
        primaryTextTheme: textThemes.primaryTextTheme,
        accentTextTheme: textThemes.accentTextTheme,
        typography: textThemes.typography);
  }
}
