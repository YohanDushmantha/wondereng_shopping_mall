import 'package:dartz/dartz.dart';

import 'package:wondereng_shopping_mall/core/data/datasources/remote/shopping_mall_remote_datasource.dart';
import 'package:wondereng_shopping_mall/core/domain/entities/shopping_mall.dart';
import 'package:wondereng_shopping_mall/core/domain/repositories/shopping_mall_repository.dart';
import 'package:wondereng_shopping_mall/helpers/error_handling/error.dart';
import 'package:wondereng_shopping_mall/helpers/error_handling/error_codes.dart';

class ShoppingMallRepositoryImpl extends ShoppingMallRepository {
  final ShoppingMallRemoteDatasource remoteDatasource;
  ShoppingMallRepositoryImpl({
    required this.remoteDatasource,
  });

  @override
  Future<Either<Error, List<ShoppingMall>>> getShoppingMalls() async {
    try {
      final response = await remoteDatasource.getShoppingMalls();
      return response.statusCode == 200
          ? Right(response.result ?? [])
          : Left(response.errorList![0] ?? ServerError(errorMessage: ErrorCode.se003.message,errorCode :ErrorCode.se003));
    } on Exception {
      return Left(ServerError(errorMessage: ErrorCode.se003.message,errorCode :ErrorCode.se003));
    }
  }
}
