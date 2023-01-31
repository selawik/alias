import 'package:alias/core/widget/custom_app_bar.dart';
import 'package:alias/feature/game/presentation/view/command_move_result_view.dart';
import 'package:flutter/material.dart';

class CommandMoveResultPage extends StatelessWidget {
  const CommandMoveResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Счет раунда'),
      body: CommandMoveResultView(),
    );
  }
}
