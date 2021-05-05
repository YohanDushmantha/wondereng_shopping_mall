import 'package:get_it/get_it.dart';
import 'package:wondereng_shopping_mall/features/landing/home/presentation/bloc/home_bloc.dart';

Future<void> setup(GetIt di) async {
  di.registerFactory(() => HomeBloc(di()));
}
