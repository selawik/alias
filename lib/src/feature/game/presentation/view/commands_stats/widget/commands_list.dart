import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:alias/src/feature/game/domain/entity/playing_command.dart';
import 'package:alias/src/feature/theming/presentation/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandsList extends StatelessWidget {
  final List<PlayingCommand> commands;

  const CommandsList({
    required this.commands,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final command = commands[index];

        return _buildCommandListItem(context, command);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
      itemCount: commands.length,
    );
  }

  Widget _buildCommandListItem(BuildContext context, PlayingCommand command) {
    final textStyle = Theme.of(context).textTheme.displayMedium;
    final themeBloc = context.read<ThemeBloc>();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ThemeBuilder.cardDecoration(
        isDarkThemeEnabled: themeBloc.state.isDarkThemeEnabled,
      ),
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
