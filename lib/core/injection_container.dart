import 'package:get_it/get_it.dart';
import 'package:wondereng_shopping_mall/core/data/injection_container.dart'
    as data_di;
import 'package:wondereng_shopping_mall/core/domain/injection_container.dart'
    as domain_di;

Future<void>? setup(GetIt di) async {
  data_di.setup(di);
  domain_di.setup(di);
}
