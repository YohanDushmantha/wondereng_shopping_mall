import 'package:auto_route/auto_route.dart';
import 'package:wondereng_shopping_mall/features/landing/home/presentation/pages/home_page.dart';
import 'package:wondereng_shopping_mall/features/sample/sample/presentation/pages/sample_page.dart';

//  flutter packages pub run build_runner watch
//  flutter packages pub run build_runner build
@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      AutoRoute(
        page: HomePage,
        initial: true,
      ),
      AutoRoute(page: SamplePage)
    ])
class $AppRouter {}
