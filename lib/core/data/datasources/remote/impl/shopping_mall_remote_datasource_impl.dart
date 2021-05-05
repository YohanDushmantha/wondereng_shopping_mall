import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:wondereng_shopping_mall/core/data/datasources/remote/shopping_mall_remote_datasource.dart';
import 'package:wondereng_shopping_mall/core/data/models/shopping_malls_response_model.dart';

class ShoppingMallRemoteDatasourceImpl extends ShoppingMallRemoteDatasource {
  final http.Client client;
  ShoppingMallRemoteDatasourceImpl({
    required this.client,
  });

  @override
  Future<ShoppingMallsResponseModel> getShoppingMalls() async {
    final response = await client.get(Uri.parse('API_SHOULD_BE_PASSED'));
    return ShoppingMallsResponseModel.fromJson(json.decode(response.body));
  }
}
