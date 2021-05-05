import 'package:get_it/get_it.dart';
import 'package:wondereng_shopping_mall/core/domain/repositories/impl/shopping_mall_repository_impl.dart';
import 'package:wondereng_shopping_mall/core/domain/repositories/shopping_mall_repository.dart';

Future<void>? setup(GetIt di) async{
di.registerLazySingleton<ShoppingMallRepository>(() => ShoppingMallRepositoryImpl(remoteDatasource: di()));
}
