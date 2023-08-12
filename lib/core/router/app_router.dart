import 'package:alias/feature/categories/presentation/categories_page.dart';
import 'package:alias/feature/commands/presentation/commands_page.dart';
import 'package:alias/feature/game/presentation/command_move_result_page.dart';
import 'package:alias/feature/game/presentation/commands_stats_page.dart';
import 'package:alias/feature/game/presentation/game_page.dart';
import 'package:alias/feature/game_settings/presentation/game_setting_page.dart';
import 'package:alias/feature/home/presentation/home_page.dart';
import 'package:alias/feature/settings/presentation/settings_page.dart';
import 'package:alias/feature/sync/presentation/synchronization_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@singleton
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, name: 'HomePageRoute'),
    AutoRoute(page: CategoriesPage, name: 'CategoryPageRoute'),
    AutoRoute(page: SettingsPage, name: 'SettingsPageRoute'),
    AutoRoute(page: CommandsPage, name: 'CommandPageRoute'),
    AutoRoute(page: GameSettingsPage, name: 'GameSettingsPageRoute'),
    AutoRoute(page: GamePage, name: 'GamePageRoute'),
    AutoRoute(page: CommandMoveResultPage, name: 'CommandMoveResultPageRoute'),
    AutoRoute(page: CommandsStatsPage, name: 'CommandsStatsPageRoute'),
    AutoRoute(
      page: SynchronizationPage,
      name: 'SynchronizationPageRoute',
      initial: true,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
