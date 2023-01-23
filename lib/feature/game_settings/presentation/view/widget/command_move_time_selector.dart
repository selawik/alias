import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:alias/feature/game_settings/domain/model/command_move_time_enum.dart';
import 'package:flutter/material.dart';

class CommandMoveTimeSelector extends StatelessWidget {
  CommandMoveTimeSelector({Key? key}) : super(key: key);

  CommandMoveTimeEnum selectedItem = CommandMoveTimeEnum.minute;

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
      children: CommandMoveTimeEnum.values
          .map(
            (element) => CommandMoveItem(
              type: element,
              isSelected: element == selectedItem,
              onTap: (moveTime) {},
            ),
          )
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: ThemeBuilder.defaultBorderRadius,
          border: isSelected
              ? Border.all(color: AppColors.appBackgroundDark)
              : null,
          color: isSelected ? AppColors.buttonColor : AppColors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(2, 3),
              blurRadius: 5,
              color: AppColors.black.withOpacity(0.4),
            ),
          ],
        ),
        child: Text(
          type.toString(),
          style: Theme.of(context).textTheme.button?.copyWith(
                color: isSelected ? null : AppColors.black,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}
