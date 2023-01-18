import 'package:alias/feature/categories/presentation/categories_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(initial: true, page: CategoriesView, name: 'CategoryViewRoute')
  ],
)
class AppRouter extends _$AppRouter {}
