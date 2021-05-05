import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:wondereng_shopping_mall/helpers/error_handling/error.dart';

class BaseResponseModel extends Equatable {
  final int? statusCode;
  final String? responseStatusCode;
  final List<ServerError?>? errorList;
  BaseResponseModel({
    this.statusCode,
    this.responseStatusCode,
    this.errorList,
  });
  @override
  List<Object?> get props => [statusCode, responseStatusCode, errorList];

  Map<String, dynamic> toMap() {
    return {
      'statusCode': statusCode,
      'responseStatusCode': responseStatusCode,
      'errorList': errorList?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory BaseResponseModel.fromMap(Map<String, dynamic> map) {
    return BaseResponseModel(
      statusCode: map['statusCode'],
      responseStatusCode: map['responseStatusCode'],
      errorList: List<ServerError?>.from(
          map['errorList']?.map((x) => ServerError?.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory BaseResponseModel.fromJson(String source) =>
      BaseResponseModel.fromMap(json.decode(source));
}
