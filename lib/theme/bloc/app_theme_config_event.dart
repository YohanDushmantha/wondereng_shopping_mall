part of 'app_theme_config_bloc.dart';

abstract class AppThemeConfigEvent extends Equatable {
  const AppThemeConfigEvent();

  @override
  List<Object> get props => [];
}

class SetAppThemeConfig extends AppThemeConfigEvent {
  SetAppThemeConfig({required this.themeType});
  final ThemeType themeType;

  @override
  List<Object> get props => [themeType];
}
