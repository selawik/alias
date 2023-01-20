import 'package:alias/feature/categories/presentation/categories_page.dart';
import 'package:alias/feature/home/presentation/home_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(initial: true, page: CategoriesPage, name: 'CategoryPageRoute'),
    AutoRoute(page: HomePage, name: 'HomePageRoute')
  ],
)
class AppRouter extends _$AppRouter {}
