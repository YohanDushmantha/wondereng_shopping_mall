part of 'app_theme_config_bloc.dart';

class AppThemeConfigState extends Equatable {
  const AppThemeConfigState({required this.themeConfig});

  final BaseThemeConfig themeConfig;

  @override
  List<Object?> get props => [themeConfig];

  AppThemeConfigState copyWith({
    BaseThemeConfig? themeConfig,
  }) {
    return AppThemeConfigState(
      themeConfig: themeConfig ?? this.themeConfig,
    );
  }
}
