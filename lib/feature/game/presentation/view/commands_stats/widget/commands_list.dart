import 'package:alias/core/theme/theme_builder.dart';
import 'package:alias/feature/commands/data/models/command.dart';
import 'package:flutter/material.dart';

class CommandsList extends StatelessWidget {
  final List<Command> commands;

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
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: ThemeBuilder.cardDecoration,
          child: Text(
            commands[index].name,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
      itemCount: commands.length,
    );
  }
}
