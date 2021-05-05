import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:wondereng_shopping_mall/helpers/validator/validation_config.dart';

class ValidationField extends Equatable {
  final String fieldName;
  final String? value;
  final List<ValidationConfig> validationConfigList;

  ValidationField(
      {required this.fieldName,
      this.value,
      required this.validationConfigList});

  @override
  List<Object?> get props => [fieldName, value, validationConfigList];
}
