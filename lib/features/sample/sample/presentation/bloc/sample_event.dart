part of 'sample_bloc.dart';
abstract class SampleFormEvent extends Equatable {
  const SampleFormEvent();

  @override
  List<Object> get props => [];
}

class SampleFormNameChanged extends SampleFormEvent {
  
  SampleFormNameChanged({
    this.name,
  });

  final String? name;
  
}

class SampleFormAgeChanged extends SampleFormEvent {
  
  SampleFormAgeChanged({
    this.age,
  });

  final String? age;
  
}

class SampleFormSubmitted extends SampleFormEvent{

}
