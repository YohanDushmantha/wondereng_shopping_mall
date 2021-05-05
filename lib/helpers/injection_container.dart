import 'package:get_it/get_it.dart';
import 'package:wondereng_shopping_mall/helpers/validator/injection_container.dart'
    as validator_di;
import 'package:wondereng_shopping_mall/helpers/date_time_helper/injection_container.dart'
    as datetime_helper_di;
import 'package:wondereng_shopping_mall/helpers/currency_helper/injection_container.dart'
    as currency_helper_di;

Future<void>? setup(GetIt di) {
  validator_di.setup(di);
  datetime_helper_di.setup(di);
  currency_helper_di.setup(di);
}
