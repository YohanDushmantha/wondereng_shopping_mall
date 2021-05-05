import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:wondereng_shopping_mall/helpers/error_handling/error.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Error, Type>> call(Params params);
}

class NoParms extends Equatable{
  @override
  List<Object> get props => [];
}
