import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:wondereng_shopping_mall/helpers/error_handling/error_codes.dart';

abstract class Error extends Equatable {
  Error({
    this.errorMessage,
    this.errorCode,
  });

  final String? errorMessage;
  final ErrorCode? errorCode;

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [errorMessage, errorCode];
}

class ServerError extends Error {
  ServerError(
      {this.errorType,
      this.statusMessage,
      String? errorMessage,
      ErrorCode? errorCode})
      : super(errorCode: errorCode, errorMessage: errorMessage);

  factory ServerError.fromMap(Map<String, dynamic> map) {
    return ServerError(
      errorType: map['errorType'],
      statusMessage: map['statusMessage'],
    );
  }

  factory ServerError.fromJson(String source) =>
      ServerError.fromMap(json.decode(source));

  final int? errorType;
  final String? statusMessage;

  @override
  List<Object?> get props => [errorType, statusMessage];

  Map<String, dynamic> toMap() {
    return {
      'errorType': errorType,
      'statusMessage': statusMessage,
    };
  }

  String toJson() => json.encode(toMap());
}

class DBError extends Error {
  DBError({String? errorMessage, ErrorCode? errorCode})
      : super(errorCode: errorCode, errorMessage: errorMessage);

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => super.stringify;
}

class FormValidationError extends Error {
  FormValidationError({String? errorMessage, ErrorCode? errorCode})
      : super(errorCode: errorCode, errorMessage: errorMessage);

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => super.stringify;
}

class NetworkError extends Error {
  NetworkError({String? errorMessage, ErrorCode? errorCode})
      : super(errorCode: errorCode, errorMessage: errorMessage);

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => super.stringify;
}

class CachingError extends Error {
  CachingError({String? errorMessage, ErrorCode? errorCode})
      : super(errorCode: errorCode, errorMessage: errorMessage);

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => super.stringify;
}

class PlatformError extends Error {
  PlatformError({String? errorMessage, ErrorCode? errorCode})
      : super(errorCode: errorCode, errorMessage: errorMessage);

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => super.stringify;
}
