import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:alias/feature/game_settings/domain/model/command_move_time_enum.dart';
import 'package:flutter/material.dart';

class CommandMoveTimeSelector extends StatelessWidget {
  CommandMoveTimeSelector({Key? key}) : super(key: key);

  CommandMoveTimeEnum selectedItem = CommandMoveTimeEnum.halfOfMinute;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Время на ход'),
        const SizedBox(height: 16),
        _buildTypesList(context),
      ],
    );
  }

  Widget _buildTypesList(BuildContext context) {
    return Wrap(
      spacing: 12,
      children: CommandMoveTimeEnum.values
          .map((element) => CommandMoveItem(
                type: element,
              ))
          .toList(),
    );
  }
}

class CommandMoveItem extends StatelessWidget {
  final CommandMoveTimeEnum type;
  final void Function(CommandMoveTimeEnum) onTap;
  final bool isSelected;

  const CommandMoveItem({
    Key? key,
    required this.type,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(type),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: ThemeBuilder.defaultBorderRadius,
          color: isSelected ? AppColors.lavender : AppColors.buttonColor,
        ),
        child: Text(type.toString()),
      ),
    );
  }
}
