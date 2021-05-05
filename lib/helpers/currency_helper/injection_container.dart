import 'package:wondereng_shopping_mall/helpers/currency_helper/currency_helper.dart';
import 'package:get_it/get_it.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton(() => CurrencyHelper());
}
