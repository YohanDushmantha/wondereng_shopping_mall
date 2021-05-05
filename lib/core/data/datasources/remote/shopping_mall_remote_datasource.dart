import 'package:wondereng_shopping_mall/core/data/models/shopping_malls_response_model.dart';

abstract class ShoppingMallRemoteDatasource{
  Future<ShoppingMallsResponseModel> getShoppingMalls();
}