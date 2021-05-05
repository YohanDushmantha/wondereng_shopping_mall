import 'package:wondereng_shopping_mall/helpers/date_time_helper/date_time_helper.dart';
import 'package:get_it/get_it.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton(() => DateTimeHelper());
}
