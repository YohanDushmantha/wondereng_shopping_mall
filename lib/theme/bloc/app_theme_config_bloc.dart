import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:wondereng_shopping_mall/injection_container.dart';
import 'package:wondereng_shopping_mall/theme/theme_type.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/base_theme_config.dart';
import 'package:equatable/equatable.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/theme_config.dart'
    as wondereng_theme_config;

part 'app_theme_config_event.dart';
part 'app_theme_config_state.dart';

class AppThemeConfigBloc
    extends Bloc<AppThemeConfigEvent, AppThemeConfigState> {
  AppThemeConfigBloc()
      : super(AppThemeConfigState(
            themeConfig: di<wondereng_theme_config.ThemeConfig>()));

  @override
  Stream<AppThemeConfigState> mapEventToState(
    AppThemeConfigEvent event,
  ) async* {
    if (event is SetAppThemeConfig) {
      switch (event.themeType) {
        case ThemeType.wondereng:
          yield state.copyWith(
              themeConfig: di<wondereng_theme_config.ThemeConfig>());
          break;
      }
    }
  }
}
