import 'package:get_it/get_it.dart';
import 'package:wondereng_shopping_mall/core/data/datasources/remote/impl/shopping_mall_remote_datasource_impl.dart';
import 'package:wondereng_shopping_mall/core/data/datasources/remote/shopping_mall_remote_datasource.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton<ShoppingMallRemoteDatasource>(
      () => ShoppingMallRemoteDatasourceImpl(client: di()));
}
