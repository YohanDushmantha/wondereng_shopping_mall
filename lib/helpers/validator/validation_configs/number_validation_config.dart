import 'package:wondereng_shopping_mall/helpers/validator/validation_config.dart';

class NumberValidationConfig extends ValidationConfig {
  NumberValidationConfig({
    String? customErrorMessage,
    String? customSuccessMessage,
    bool? successMessageIsRequired,
  }) : super(
            customErrorMessage: customErrorMessage,
            customSuccessMessage: customSuccessMessage,
            successMessageIsRequired: successMessageIsRequired);

  @override
  List<Object?> get props => super.props;
}
