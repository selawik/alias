import 'package:alias/feature/game_settings/domain/model/command_move_selector_type.dart';
import 'package:alias/feature/game_settings/presentation/bloc/game_settings_bloc.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/base_selector_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandMoveTimeSelector extends StatelessWidget {
  const CommandMoveTimeSelector({
    Key? key,
    required this.selectedItem,
  }) : super(key: key);

  final CommandMoveMode selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Время на ход', style: Theme.of(context).textTheme.headline1),
        const SizedBox(height: 16),
        _buildTypesList(context),
      ],
    );
  }

  Widget _buildTypesList(BuildContext context) {
    var items = CommandMoveMode.values.map(
      (mode) => BaseSelectorItem(
        onTap: () => _onCommandMoveTap(context, mode),
        isSelected: mode == selectedItem,
        title: mode.toString(),
      ),
    );

    return Wrap(spacing: 12, runSpacing: 12, children: items.toList());
  }

  void _onCommandMoveTap(BuildContext context, CommandMoveMode mode) {
    var bloc = BlocProvider.of<GameSettingsBloc>(context);

    bloc.add(GameSettingsEvent.moveTimeChanged(moveTime: mode));
  }
}
