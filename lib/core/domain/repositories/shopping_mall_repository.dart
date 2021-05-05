import 'package:dartz/dartz.dart';
import 'package:wondereng_shopping_mall/core/domain/entities/shopping_mall.dart';
import 'package:wondereng_shopping_mall/helpers/error_handling/error.dart';

abstract class ShoppingMallRepository {
  Future<Either<Error, List<ShoppingMall>>> getShoppingMalls();
}
