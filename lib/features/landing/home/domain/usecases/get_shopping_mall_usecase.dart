import 'package:dartz/dartz.dart';
import 'package:wondereng_shopping_mall/config/features/domain/usecases/usecase.dart';
import 'package:wondereng_shopping_mall/core/domain/entities/shopping_mall.dart';
import 'package:wondereng_shopping_mall/core/domain/repositories/shopping_mall_repository.dart';
import 'package:wondereng_shopping_mall/helpers/error_handling/error.dart';

class GetShoppingMallUsecase extends UseCase<List<ShoppingMall>, NoParms> {
  final ShoppingMallRepository repository;

  GetShoppingMallUsecase(this.repository);

  @override
  Future<Either<Error, List<ShoppingMall>>> call(NoParms params) async {
    return await repository.getShoppingMalls();
  }
}
