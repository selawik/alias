// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    CategoryPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CategoriesPage(),
      );
    },
    SettingsPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    CommandPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CommandsPage(),
      );
    },
    GameSettingsPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const GameSettingsPage(),
      );
    },
    GamePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const GamePage(),
      );
    },
    CommandMoveResultPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CommandMoveResultPage(),
      );
    },
    CommandsStatsPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CommandsStatsPage(),
      );
    },
    SynchronizationPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SynchronizationPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomePageRoute.name,
          path: '/home-page',
        ),
        RouteConfig(
          CategoryPageRoute.name,
          path: '/categories-page',
        ),
        RouteConfig(
          SettingsPageRoute.name,
          path: '/settings-page',
        ),
        RouteConfig(
          CommandPageRoute.name,
          path: '/commands-page',
        ),
        RouteConfig(
          GameSettingsPageRoute.name,
          path: '/game-settings-page',
        ),
        RouteConfig(
          GamePageRoute.name,
          path: '/game-page',
        ),
        RouteConfig(
          CommandMoveResultPageRoute.name,
          path: '/command-move-result-page',
        ),
        RouteConfig(
          CommandsStatsPageRoute.name,
          path: '/commands-stats-page',
        ),
        RouteConfig(
          SynchronizationPageRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [CategoriesPage]
class CategoryPageRoute extends PageRouteInfo<void> {
  const CategoryPageRoute()
      : super(
          CategoryPageRoute.name,
          path: '/categories-page',
        );

  static const String name = 'CategoryPageRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsPageRoute extends PageRouteInfo<void> {
  const SettingsPageRoute()
      : super(
          SettingsPageRoute.name,
          path: '/settings-page',
        );

  static const String name = 'SettingsPageRoute';
}

/// generated route for
/// [CommandsPage]
class CommandPageRoute extends PageRouteInfo<void> {
  const CommandPageRoute()
      : super(
          CommandPageRoute.name,
          path: '/commands-page',
        );

  static const String name = 'CommandPageRoute';
}

/// generated route for
/// [GameSettingsPage]
class GameSettingsPageRoute extends PageRouteInfo<void> {
  const GameSettingsPageRoute()
      : super(
          GameSettingsPageRoute.name,
          path: '/game-settings-page',
        );

  static const String name = 'GameSettingsPageRoute';
}

/// generated route for
/// [GamePage]
class GamePageRoute extends PageRouteInfo<void> {
  const GamePageRoute()
      : super(
          GamePageRoute.name,
          path: '/game-page',
        );

  static const String name = 'GamePageRoute';
}

/// generated route for
/// [CommandMoveResultPage]
class CommandMoveResultPageRoute extends PageRouteInfo<void> {
  const CommandMoveResultPageRoute()
      : super(
          CommandMoveResultPageRoute.name,
          path: '/command-move-result-page',
        );

  static const String name = 'CommandMoveResultPageRoute';
}

/// generated route for
/// [CommandsStatsPage]
class CommandsStatsPageRoute extends PageRouteInfo<void> {
  const CommandsStatsPageRoute()
      : super(
          CommandsStatsPageRoute.name,
          path: '/commands-stats-page',
        );

  static const String name = 'CommandsStatsPageRoute';
}

/// generated route for
/// [SynchronizationPage]
class SynchronizationPageRoute extends PageRouteInfo<void> {
  const SynchronizationPageRoute()
      : super(
          SynchronizationPageRoute.name,
          path: '/',
        );

  static const String name = 'SynchronizationPageRoute';
}
