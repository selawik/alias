import 'package:alias/core/theme/theme_builder.dart';
import 'package:alias/feature/game/domain/model/playing_command.dart';
import 'package:flutter/material.dart';

class CommandsList extends StatelessWidget {
  final List<PlayingCommand> commands;

  const CommandsList({
    Key? key,
    required this.commands,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var command = commands[index];

        return _buildCommandListItem(context, command);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
      itemCount: commands.length,
    );
  }

  Widget _buildCommandListItem(BuildContext context, PlayingCommand command) {
    var textStyle = Theme.of(context).textTheme.displayMedium;
    
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ThemeBuilder.cardDecoration,
      child: Row(
        children: [
          Text(
            command.name,
            style: textStyle,
          ),
          const Spacer(),
          Text(
            command.score.toString(),
            style: textStyle,
          )
        ],
      ),
    );
  }
}
