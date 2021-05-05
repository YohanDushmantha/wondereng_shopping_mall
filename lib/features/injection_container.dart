import 'package:get_it/get_it.dart';
import 'package:wondereng_shopping_mall/features/landing/injection_container.dart'
    as landing_di;
import 'package:wondereng_shopping_mall/features/sample/injection_container.dart'
    as sample_di;

Future<void>? setup(GetIt di) {
  landing_di.setup(di);
  sample_di.setup(di);
}
