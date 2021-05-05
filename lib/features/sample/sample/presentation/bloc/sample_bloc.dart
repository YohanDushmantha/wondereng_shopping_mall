import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:wondereng_shopping_mall/config/features/presentation/bloc/form_submission_status.dart';
import 'package:wondereng_shopping_mall/helpers/error_handling/error.dart';
import 'package:wondereng_shopping_mall/helpers/error_handling/error_codes.dart';
import 'package:equatable/equatable.dart';
part 'sample_event.dart';
part 'sample_state.dart';

class SampleBloc extends Bloc<SampleFormEvent, SampleState> {
  SampleBloc() : super(SampleState());

  @override
  Stream<SampleState> mapEventToState(
    SampleFormEvent event,
  ) async* {
    //name updated
    if (event is SampleFormNameChanged) {
      yield state.copyWith(name: event.name);
    } else if (event is SampleFormAgeChanged) {
      yield state.copyWith(age: event.age);
    } else if (event is SampleFormSubmitted) {
      yield state.copyWith(formStatus: const FormSubmitting());

      try {
        await Future.delayed(const Duration(seconds: 3));
        yield state.copyWith(formStatus: const FormSubmissionSuccess());
      } catch (e) {
        yield state.copyWith(
            formStatus: FormSubmissionFailed(
                error: ServerError(
                    errorCode: ErrorCode.se001,
                    errorMessage: 'Form Submission Failed')));
      }
    }
  }
}
