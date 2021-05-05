import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

Future<void>? setup(GetIt di) async{
  di.registerLazySingleton(() => http.Client());
}
