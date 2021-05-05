import 'package:wondereng_shopping_mall/features/sample/sample/presentation/bloc/sample_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> setup(GetIt di) async {
  di.registerFactory(() => SampleBloc());
}
