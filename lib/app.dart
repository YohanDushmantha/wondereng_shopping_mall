import 'package:wondereng_shopping_mall/generated/l10n.dart';
import 'package:wondereng_shopping_mall/routes/router.gr.dart';
import 'package:wondereng_shopping_mall/theme/bloc/app_theme_config_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:wondereng_shopping_mall/injection_container.dart';

class App extends StatelessWidget {
  final AppRouter _appRouter = di();
  //final AppThemeConfigBloc _appThemeConfigBloc = di<AppThemeConfigBloc>();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => di<AppThemeConfigBloc>())],
      child: BlocBuilder<AppThemeConfigBloc, AppThemeConfigState>(
        builder: _buildWithTheme,
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, AppThemeConfigState state) {
    return MaterialApp.router(
      title: 'Ecoru Mula',
      theme: state.themeConfig.theme,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      // use English as the default locale
      localeResolutionCallback:
          (Locale? locale, Iterable<Locale> supportedLocales) {
        return locale;
      },
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
