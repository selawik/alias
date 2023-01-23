import 'package:alias/feature/game_settings/presentation/view/widget/command_move_time_selector.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/last_word_selector.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/penalty_selector.dart';
import 'package:flutter/material.dart';

class GameSettingsView extends StatelessWidget {
  const GameSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          CommandMoveTimeSelector(),
          const SizedBox(height: 16),
          const LastWordSelector(),
          const SizedBox(height: 16),
          const PenaltySelector(),
        ],
      ),
    );
  }
}
