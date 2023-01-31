import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/feature/commands/data/models/command.dart';
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
    var textStyle = Theme.of(context).textTheme.displayMedium;

    return  Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: AppColors.peach,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              command.name,
              style: textStyle,
            ),
          ),
          Text(
           commandScore.toString(),
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
