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
    CategoryPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          CategoryPageRoute.name,
          path: '/',
        ),
        RouteConfig(
          CategoryPageRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [HomePage]
class CategoryPageRoute extends PageRouteInfo<void> {
  const CategoryPageRoute()
      : super(
          CategoryPageRoute.name,
          path: '/',
        );

  static const String name = 'CategoryPageRoute';
}
