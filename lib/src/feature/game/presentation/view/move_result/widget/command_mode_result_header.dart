import 'package:alias/src/feature/game/domain/entity/playing_command.dart';
import 'package:alias/src/feature/game/presentation/view/move_result/widget/command_score.dart';
import 'package:flutter/material.dart';

class CommandModeResultHeader extends StatelessWidget {
  final int commandScore;
  final PlayingCommand command;

  const CommandModeResultHeader({
    required this.command,
    required this.commandScore,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            command.name,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(width: 8),
          CommandScore(score: commandScore),
        ],
      ),
    );
  }
}
