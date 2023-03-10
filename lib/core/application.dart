import 'package:alias/core/injection.dart' as di;
import 'package:alias/core/router/app_router.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    var router = di.locator<AppRouter>();

    return MaterialApp.router(
      title: 'Alias mobile',
      theme: ThemeBuilder.buildLightTheme(),
      routerDelegate: AutoRouterDelegate(
        router,
        navigatorObservers: () => [
          NavigatorObserver(),
        ],
      ),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
