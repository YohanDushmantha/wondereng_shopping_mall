import 'package:wondereng_shopping_mall/config/features/presentation/bloc/form_submission_status.dart';
import 'package:wondereng_shopping_mall/core/components/buttons/bar_buttons/material_bar_button.dart';
import 'package:wondereng_shopping_mall/core/components/text_fields/default_text_field.dart';
import 'package:wondereng_shopping_mall/features/sample/sample/presentation/bloc/sample_bloc.dart';
import 'package:wondereng_shopping_mall/injection_container.dart';
import 'package:wondereng_shopping_mall/theme/theme_variation_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SamplePage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sample Page'),
        ),
        body: BlocProvider(
            create: (context) => di<SampleBloc>(), child: SampleForm()));
  }

  Widget SampleForm() {
    return BlocListener<SampleBloc, SampleState>(
      listener: (context, state) {
        if (state.formStatus is FormSubmissionSuccess) {
          // context.router.push(const SampleCategoryFormPageRoute());
        } else if (state.formStatus is FormSubmissionFailed) {}
      },
      child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              children: [nameField(), ageField(), loginButton()],
            ),
          )),
    );
  }

  Widget nameField() {
    return BlocBuilder<SampleBloc, SampleState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: DefaultTextField(
              labelPosition: DefaultTextFieldLabelPosition.top,
              validationMessage: 'Validation Message',
              isValid: state.isValidName,
              setValue: (String? value) {
                context
                    .read<SampleBloc>()
                    .add(SampleFormNameChanged(name: value));
              }),
        );
      },
    );
  }

  Widget ageField() {
    return BlocBuilder<SampleBloc, SampleState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: DefaultTextField(
            textInputAction: TextInputAction.done,
            labelPosition: DefaultTextFieldLabelPosition.inline,
            validationMessage: 'Validation Message',
            isValid: state.isValidAge,
            setValue: (String? value) {
              context.read<SampleBloc>().add(SampleFormAgeChanged(age: value));
            },
            onFieldSubmitted: (value) {
              _submit(context);
            },
          ),
        );
      },
    );
  }

  Widget loginButton() {
    return BlocBuilder<SampleBloc, SampleState>(
      builder: (context, state) {
        return state.formStatus is FormSubmitting
            ? const CircularProgressIndicator()
            : FractionallySizedBox(
                widthFactor: 1,
                child: MaterialBarButton(
                  themeVariationType: ThemeVariationType.success,
                  title: 'Submit',
                  onTap: () {
                    _submit(context);
                  },
                ),
              );
      },
    );
  }

  void _submit(BuildContext context) {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      context.read<SampleBloc>().add(SampleFormSubmitted());
    }
  }
}
