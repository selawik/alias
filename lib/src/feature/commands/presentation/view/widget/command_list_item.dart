import 'package:alias/src/core/constants/app_colors.dart';
import 'package:alias/src/core/constants/assets_catalog.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:alias/src/feature/commands/domain/models/command_entity.dart';
import 'package:alias/src/feature/commands/presentation/bloc/commands_bloc.dart';
import 'package:alias/src/feature/theming/presentation/bloc/theme_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandListItem extends StatelessWidget {
  final CommandEntity command;

  const CommandListItem({
    required this.command,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final commandsBloc = BlocProvider.of<CommandsBloc>(context);
    final themeBloc = context.read<ThemeBloc>();

    final textStyle = Theme.of(context).textTheme.displayMedium;

    return Container(
      height: 80,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(16),
      decoration: ThemeBuilder.cardDecoration(
        isDarkThemeEnabled: themeBloc.state.isDarkThemeEnabled,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              command.name,
              style: textStyle,
            ),
          ),
          const SizedBox(width: 8),
          if (commandsBloc.state.isEnoughToRemove)
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () => _onRemovePressed(context),
              child: Image.asset(
                AssetsCatalog.icRemove,
                color: AppColors.red,
                width: 24,
              ),
            )
          else
            const SizedBox(),
        ],
      ),
    );
  }

  void _onRemovePressed(BuildContext context) {
    BlocProvider.of<CommandsBloc>(context).add(
      CommandsEvent.removeCommand(command: command),
    );
  }
}
