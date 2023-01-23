import 'package:alias/feature/categories/presentation/categories_page.dart';
import 'package:alias/feature/commands/presentation/commands_page.dart';
import 'package:alias/feature/game_settings/presentation/game_setting_page.dart';
import 'package:alias/feature/home/presentation/home_page.dart';
import 'package:alias/feature/settings/presentation/settings_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@singleton
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(initial: true, page: HomePage, name: 'HomePageRoute'),
    AutoRoute(page: CategoriesPage, name: 'CategoryPageRoute'),
    AutoRoute(page: SettingsPage, name: 'SettingsPageRoute'),
    AutoRoute(page: CommandsPage, name: 'CommandPageRoute'),
    AutoRoute(page: GameSettingsPage, name: 'GameSettingsPageRoute'),
  ],
)
class AppRouter extends _$AppRouter {}
