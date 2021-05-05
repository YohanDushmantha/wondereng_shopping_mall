import 'package:get_it/get_it.dart';
import 'package:wondereng_shopping_mall/features/landing/home/injection_container.dart'
    as home_di;

Future<void>? setup(GetIt di) {
  home_di.setup(di);
}
