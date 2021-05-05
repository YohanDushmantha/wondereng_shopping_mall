import 'dart:async';
import 'dart:developer';

import 'package:wondereng_shopping_mall/app.dart';
import 'package:flutter/material.dart';
import 'package:wondereng_shopping_mall/injection_container.dart' as app_di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await app_di.setup();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(() => runApp(App()),
      (error, stackTrace) => log(error.toString(), stackTrace: stackTrace));
}
