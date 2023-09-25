import 'package:alias/src/feature/commands/domain/models/command.dart';
import 'package:alias/src/feature/commands/presentation/view/widget/command_list_item.dart';
import 'package:flutter/material.dart';

class CommandsList extends StatelessWidget {
  final ScrollController scrollController;
  final Set<Command> commands;

  const CommandsList({
    required this.scrollController,
    required this.commands,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      controller: scrollController,
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemBuilder: (context, index) {
        final commandEntity = commands.elementAt(index);

        return CommandListItem(command: commandEntity);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: commands.length,
    );
  }
}
