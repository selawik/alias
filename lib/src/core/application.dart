import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:alias/src/feature/theming/presentation/bloc/theme_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    final router = di.locator<AppRouter>();

    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) => MaterialApp.router(
        title: 'Alias mobile',
        theme: ThemeBuilder.getTheme(
          isDarkThemeEnabled: state.isDarkThemeEnabled,
        ),
        routerDelegate: AutoRouterDelegate(
          router,
          navigatorObservers: () => [NavigatorObserver()],
        ),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
