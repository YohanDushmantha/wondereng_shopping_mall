import 'package:get_it/get_it.dart';
import 'package:wondereng_shopping_mall/config/injection_container.dart'
    as config_di;
import 'package:wondereng_shopping_mall/core/injection_container.dart'
    as core_di;
import 'package:wondereng_shopping_mall/features/injection_container.dart'
    as features_di;
import 'package:wondereng_shopping_mall/helpers/injection_container.dart'
    as helpers_di;
import 'package:wondereng_shopping_mall/routes/injection_container.dart'
    as routes_di;
import 'package:wondereng_shopping_mall/theme/injection_container.dart'
    as theme_di;

final di = GetIt.instance;

Future<void>? setup() {
  config_di.setup(di);
  core_di.setup(di);
  features_di.setup(di);
  helpers_di.setup(di);
  routes_di.setup(di);
  theme_di.setup(di);
}
