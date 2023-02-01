import 'package:alias/core/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'view/commands_stats/commands_stats_view.dart';

class CommandsStatsPage extends StatelessWidget {
  const CommandsStatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Счет команд'),
      body: CommandsStatsView(),
    );
  }
}
