part of 'sample_bloc.dart';
class SampleState extends Equatable {
  SampleState(
      {this.name = '',
      this.age = '',
      this.formStatus = const InitialFormStatus()});

  final String name;
  bool get isValidName => name.length > 3;

  final String age;
  bool get isValidAge => age.length > 1;

  final FormSubmissionStatus? formStatus;

  @override
  List<Object?> get props => [name, age, formStatus];

  SampleState copyWith({
    String? name,
    String? age,
    FormSubmissionStatus? formStatus,
  }) {
    return SampleState(
        name: name ?? this.name,
        age: age ?? this.age,
        formStatus: formStatus ?? this.formStatus);
  }
}
