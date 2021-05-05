import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/components_theme_data.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/colors.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/fonts.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/text_themes.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/wondereng_theme/theme_config.dart';
import 'package:get_it/get_it.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton(() => Colors());
  di.registerLazySingleton(() => Fonts());
  di.registerLazySingleton(() => TextThemes());
  di.registerLazySingleton(() => ThemeConfig());
  di.registerLazySingleton(
      () => ComponentsThemeData(colors: di(), fonts: di(), textThemes: di()));
}
