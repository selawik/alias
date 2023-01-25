import 'package:alias/feature/game_settings/domain/model/command_move_selector_type.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/base_selector_item.dart';
import 'package:flutter/material.dart';

class CommandMoveTimeSelector extends StatelessWidget {
  const CommandMoveTimeSelector({
    Key? key,
    required this.selectedItem,
  }) : super(key: key);

  final CommandMoveModeSelector selectedItem;

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
    return Wrap(
      spacing: 12,
      children: CommandMoveModeSelector.values
          .map(
            (element) => BaseSelectorItem(
              onTap: () {},
              isSelected: element == selectedItem,
              title: element.toString(),
            ),
          )
          .toList(),
    );
  }
}
