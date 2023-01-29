import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/constants/assets_catalog.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:alias/feature/commands/data/models/command.dart';
import 'package:alias/feature/commands/presentation/bloc/commands_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandListItem extends StatelessWidget {
  final Command command;

  const CommandListItem({
    Key? key,
    required this.command,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<CommandsBloc>(context);
    var textStyle = Theme.of(context).textTheme.displayMedium;

    return Container(
      height: 80,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: ThemeBuilder.defaultBorderRadius,
        boxShadow: ThemeBuilder.defaultShadow,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              command.name,
              style: textStyle?.copyWith(color: AppColors.black),
            ),
          ),
          const SizedBox(width: 8),
          bloc.state.whenOrNull(
                loaded: (addedCommands) {
                  if (addedCommands.length > 2) {
                    return _buildRemoveButton(context, command);
                  }
                  return null;
                },
              ) ??
              const SizedBox(),
        ],
      ),
    );
  }

  Widget _buildRemoveButton(BuildContext context, Command command) {
    var bloc = BlocProvider.of<CommandsBloc>(context);

    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () => bloc.add(
        CommandsEvent.removeCommand(command: command),
      ),
      child: Image.asset(
        AssetsCatalog.icRemove,
        color: AppColors.red,
        width: 24,
      ),
    );
  }
}
