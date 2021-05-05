import 'package:wondereng_shopping_mall/theme/theme_values/base_components_theme_data.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/base_colors.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/base_fonts.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/base_text_themes.dart';
import 'package:flutter/material.dart';

abstract class BaseThemeConfig {
  abstract BaseColors colors;
  abstract BaseFonts fonts;
  abstract BaseTextThemes textThemes;
  abstract BaseComponentsThemeData componentsThemeData;

  ThemeData get theme;
}
