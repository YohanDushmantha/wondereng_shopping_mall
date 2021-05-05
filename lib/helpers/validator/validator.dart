import 'package:wondereng_shopping_mall/helpers/currency_helper/currency_helper.dart';
import 'package:wondereng_shopping_mall/injection_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:wondereng_shopping_mall/helpers/validator/validation_config.dart';
import 'package:wondereng_shopping_mall/helpers/validator/validation_configs/email_validation_config.dart';
import 'package:wondereng_shopping_mall/helpers/validator/validation_configs/number_validation_config.dart';
import 'package:wondereng_shopping_mall/helpers/validator/validation_configs/password_match_validation_config.dart';
import 'package:wondereng_shopping_mall/helpers/validator/validation_configs/required_validation_config.dart';
import 'package:wondereng_shopping_mall/helpers/validator/validation_field.dart';
import 'package:wondereng_shopping_mall/helpers/validator/validation_result.dart';
import 'package:wondereng_shopping_mall/generated/l10n.dart';

class Validator {
  late final CurrencyHelper currencyHelper = di();

  ValidationResult validateFields(
      List<ValidationField> validationFieldList, BuildContext context) {
    var validationResult = ValidationResult(isValid: true);
    OUTER:
    for (var fieldIndex = 0;
        fieldIndex < validationFieldList.length;
        fieldIndex++) {
      for (var configIndex = 0;
          configIndex <
              validationFieldList[fieldIndex].validationConfigList.length;
          configIndex++) {
        var result = validateField(
            validationFieldList[fieldIndex].fieldName,
            validationFieldList[fieldIndex].value ?? '',
            validationFieldList[fieldIndex].validationConfigList[configIndex],
            context);
        if (!result.isValid) {
          validationResult = result;
          break OUTER;
        } else if (result.isValid &&
            validationFieldList.length - 1 == fieldIndex &&
            validationFieldList[fieldIndex].validationConfigList.length - 1 ==
                configIndex) {
          validationResult = result;
          break OUTER;
        }
      }
    }
    return validationResult;
  }

  ValidationResult validateField(String fieldName, String value,
      ValidationConfig validationConfig, BuildContext context) {
    if (validationConfig is RequiredValidationConfig) {
      var result = _isRequired(fieldName, value, validationConfig, context);
      if (!result.isValid) {
        return result;
      }
    } else if (validationConfig is NumberValidationConfig) {
      var result = _isNumber(fieldName, value, validationConfig, context);
      if (!result.isValid) {
        return result;
      }
    } else if (validationConfig is EmailValidationConfig) {
      var result = _isEmail(fieldName, value, validationConfig, context);
      if (!result.isValid) {
        return result;
      }
    } else if (validationConfig is PasswordMatchValidationConfig) {
      var result =
          _isPasswordMatched(fieldName, value, validationConfig, context);
      if (!result.isValid) {
        return result;
      }
    }

    return ValidationResult(isValid: true);
  }

  ValidationResult _isRequired(String fieldName, String value,
      RequiredValidationConfig validationConfig, BuildContext context) {
    if (value != '') {
      return ValidationResult(
          isValid: true,
          message: validationConfig.successMessageIsRequired ?? false
              ? validationConfig.customSuccessMessage
              : null);
    } else {
      return ValidationResult(
          isValid: false,
          message: validationConfig.customErrorMessage ??
              S.of(context).validationIsRequired(fieldName));
    }
  }

  ValidationResult _isNumber(String fieldName, String value,
      NumberValidationConfig validationConfig, BuildContext context) {
    var parsedValue =
        double.tryParse(currencyHelper.trimCommaOfString(value)) ?? null;
    if (parsedValue != null) {
      return ValidationResult(
          isValid: true,
          message: validationConfig.successMessageIsRequired ?? false
              ? validationConfig.customSuccessMessage
              : null);
    } else {
      return ValidationResult(
          isValid: false,
          message: validationConfig.customErrorMessage ??
              S.of(context).validationIsNumber(fieldName));
    }
  }

  ValidationResult _isEmail(String fieldName, String value,
      EmailValidationConfig validationConfig, BuildContext context) {
    var isValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (isValid) {
      return ValidationResult(
          isValid: true,
          message: validationConfig.successMessageIsRequired ?? false
              ? validationConfig.customSuccessMessage
              : null);
    } else {
      return ValidationResult(
          isValid: false,
          message: validationConfig.customErrorMessage ??
              S.of(context).validationIsEmail(fieldName));
    }
  }

  ValidationResult _isPasswordMatched(String fieldName, String value,
      PasswordMatchValidationConfig validationConfig, BuildContext context) {
    if (value != null &&
        value != '' &&
        validationConfig.confirmPassword != null &&
        validationConfig.confirmPassword != '' &&
        value == validationConfig.confirmPassword) {
      return ValidationResult(
          isValid: true,
          message: validationConfig.successMessageIsRequired ?? false
              ? validationConfig.customSuccessMessage
              : null);
    } else {
      return ValidationResult(
          isValid: false,
          message: validationConfig.customErrorMessage ??
              S.of(context).validationPasswordNotEqualsToConfirmPassword);
    }
  }
}
