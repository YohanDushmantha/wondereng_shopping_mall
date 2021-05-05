import 'package:wondereng_shopping_mall/theme/bloc/app_theme_config_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:wondereng_shopping_mall/theme/theme_values/injection_container.dart'
    as theme_values_di;

Future<void>? setup(GetIt di) {
  theme_values_di.setup(di);

  di.registerFactory(() => AppThemeConfigBloc());
}
