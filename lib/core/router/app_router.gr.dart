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
    CategoryViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CategoriesView(),
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          CategoryViewRoute.name,
          path: '/categories-view',
        )
      ];
}

/// generated route for
/// [CategoriesView]
class CategoryViewRoute extends PageRouteInfo<void> {
  const CategoryViewRoute()
      : super(
          CategoryViewRoute.name,
          path: '/categories-view',
        );

  static const String name = 'CategoryViewRoute';
}
