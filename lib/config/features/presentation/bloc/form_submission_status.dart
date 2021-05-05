import 'package:equatable/equatable.dart';
import 'package:wondereng_shopping_mall/helpers/error_handling/error.dart';

abstract class FormSubmissionStatus extends Equatable {
  const FormSubmissionStatus();
}

class InitialFormStatus extends FormSubmissionStatus {
  const InitialFormStatus();

  @override
  List<Object?> get props => [];
}

class FormSubmitting extends FormSubmissionStatus {
  const FormSubmitting();

  @override
  List<Object?> get props => [];
}

class FormSubmissionSuccess extends FormSubmissionStatus {
  const FormSubmissionSuccess();

  @override
  List<Object?> get props => [];
}

class FormSubmissionFailed extends FormSubmissionStatus {
  const FormSubmissionFailed({required this.error});

  final Error error;

  @override
  List<Object?> get props => [error];
}
