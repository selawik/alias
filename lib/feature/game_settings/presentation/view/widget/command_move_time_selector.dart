import 'package:alias/feature/game_settings/domain/model/command_move_selector_type.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/base_selector_item.dart';
import 'package:flutter/material.dart';

class CommandMoveTimeSelector extends StatelessWidget {
  CommandMoveTimeSelector({Key? key}) : super(key: key);

  CommandMoveSelectorType selectedItem = CommandMoveSelectorType.minute;

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
      children: CommandMoveSelectorType.values
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