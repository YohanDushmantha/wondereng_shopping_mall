import 'package:wondereng_shopping_mall/theme/bloc/app_theme_config_bloc.dart';
import 'package:wondereng_shopping_mall/theme/theme_variation_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MaterialBarButton extends StatelessWidget {
  const MaterialBarButton(
      {Key? key,
      this.onTap,
      this.title,
      this.themeVariationType = ThemeVariationType.success,
      this.style})
      : super(key: key);

  final Function? onTap;
  final String? title;
  final ThemeVariationType themeVariationType;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeConfigBloc, AppThemeConfigState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            if (onTap != null) {
              (onTap!)();
            }
          },
          style: style ??
              ElevatedButton.styleFrom(
                  primary: state.themeConfig.colors.themeColorVariation
                      .getColorByVariation(
                          themeVariationType: themeVariationType),
                  onPrimary: state
                      .themeConfig.colors.materialBarButtonDefaultTextColor),
          child: Text(title ?? 'Button Title'),
        );
      },
    );
  }
}
