import 'package:alias/src/core/widget/custom_app_bar.dart';
import 'package:alias/src/feature/game/presentation/view/commands_stats/commands_stats_view.dart';
import 'package:flutter/material.dart';

class CommandsStatsPage extends StatelessWidget {
  const CommandsStatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const Scaffold(
        appBar: CustomAppBar(
          title: 'Счет команд',
          automaticallyImplyLeading: false,
        ),
        body: CommandsStatsView(),
      ),
    );
  }
}
