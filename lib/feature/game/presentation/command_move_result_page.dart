import 'package:alias/core/widget/custom_app_bar.dart';
import 'package:alias/feature/game/presentation/view/move_result/command_move_result_view.dart';
import 'package:flutter/material.dart';

class CommandMoveResultPage extends StatelessWidget {
  const CommandMoveResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const Scaffold(
        appBar: CustomAppBar(
          title: 'Счет раунда',
          automaticallyImplyLeading: false,
        ),
        body: CommandMoveResultView(),
      ),
    );
  }
}
