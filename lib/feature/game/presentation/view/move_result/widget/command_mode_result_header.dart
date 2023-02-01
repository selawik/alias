import 'package:alias/feature/game/domain/playing_command.dart';
import 'package:alias/feature/game/presentation/view/move_result/widget/command_score.dart';
import 'package:flutter/material.dart';

class CommandModeResultHeader extends StatelessWidget {
  final int commandScore;
  final PlayingCommand command;

  const CommandModeResultHeader({
    Key? key,
    required this.command,
    required this.commandScore,
  }) : super(key: key);

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
