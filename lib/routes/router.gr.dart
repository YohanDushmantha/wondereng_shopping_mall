// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../features/landing/home/presentation/pages/home_page.dart' as _i2;
import '../features/sample/sample/presentation/pages/sample_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomePageRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.HomePage());
    },
    SamplePageRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.SamplePage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomePageRoute.name, path: '/'),
        _i1.RouteConfig(SamplePageRoute.name, path: '/sample-page')
      ];
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/');

  static const String name = 'HomePageRoute';
}

class SamplePageRoute extends _i1.PageRouteInfo {
  const SamplePageRoute() : super(name, path: '/sample-page');

  static const String name = 'SamplePageRoute';
}
