import 'dart:convert';

import 'package:wondereng_shopping_mall/config/core/data/base_response_model.dart';
import 'package:wondereng_shopping_mall/core/domain/entities/shopping_mall.dart';

class ShoppingMallsResponseModel extends BaseResponseModel {
  final List<ShoppingMall>? result;
  ShoppingMallsResponseModel({
    required this.result,
  });

  

  Map<String, dynamic> toMap() {
    return {
      'result': result?.map((x) => x.toMap()).toList(),
    };
  }

  factory ShoppingMallsResponseModel.fromMap(Map<String, dynamic> map) {
    return ShoppingMallsResponseModel(
      result: List<ShoppingMall>.from(map['result']?.map((x) => ShoppingMall.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ShoppingMallsResponseModel.fromJson(String source) => ShoppingMallsResponseModel.fromMap(json.decode(source));
}
