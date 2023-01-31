import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:alias/feature/commands/data/models/command.dart';
import 'package:alias/feature/game/presentation/view/widget/command_score.dart';
import 'package:flutter/material.dart';

class CommandModeResultHeader extends StatelessWidget {
  final int commandScore;
  final Command command;

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
