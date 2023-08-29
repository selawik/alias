import 'package:alias/src/feature/game_settings/domain/model/command_move_selector_type.dart';
import 'package:alias/src/feature/game_settings/presentation/bloc/game_settings_bloc.dart';
import 'package:alias/src/feature/game_settings/presentation/view/widget/base_selector_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandMoveTimeSelector extends StatelessWidget {
  const CommandMoveTimeSelector({
    required this.selectedItem,
    super.key,
  });

  final CommandMoveMode selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Время на ход', style: Theme.of(context).textTheme.displayLarge),
        const SizedBox(height: 16),
        _buildTypesList(context),
      ],
    );
  }

  Widget _buildTypesList(BuildContext context) {
    final items = CommandMoveMode.values.map(
      (mode) => BaseSelectorItem(
        onTap: () => _onCommandMoveTap(context, mode),
        isSelected: mode == selectedItem,
        title: mode.toString(),
      ),
    );

    return Wrap(spacing: 12, runSpacing: 12, children: items.toList());
  }

  void _onCommandMoveTap(BuildContext context, CommandMoveMode mode) {
    BlocProvider.of<GameSettingsBloc>(context).add(
      GameSettingsEvent.moveTimeChanged(moveTime: mode),
    );
  }
}
