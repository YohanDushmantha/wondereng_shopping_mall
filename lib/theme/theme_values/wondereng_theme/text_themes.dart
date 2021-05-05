import 'dart:ui';

import 'package:wondereng_shopping_mall/theme/theme_values/base_text_themes.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/typography.dart';
import 'package:flutter/src/painting/text_style.dart';

class TextThemes extends BaseTextThemes {
  @override
  TextTheme? get accentTextTheme {
    return TextTheme();
  }

  @override
  TextTheme? get primaryTextTheme {
    return TextTheme();
  }

  @override
  TextTheme? get textTheme {
    return TextTheme();
  }

  @override
  Typography? get typography => Typography.material2018();
}
