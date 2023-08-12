import 'package:alias/feature/game/presentation/view/game_field/widget/game_pause_menu_option.dart';
import 'package:flutter/material.dart';

class GamePauseDialog extends StatelessWidget {
  final void Function() onResumePressed;
  final void Function() onExitPressed;

  const GamePauseDialog({
    required this.onResumePressed,
    required this.onExitPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Меню'),
      children: [
        GameFieldPauseMenuOption(
          icon: Icons.start,
          text: 'Продолжить игру',
          color: Colors.green,
          callback: onResumePressed,
        ),
        GameFieldPauseMenuOption(
          icon: Icons.logout,
          text: 'Выйти',
          color: Colors.red,
          callback: onExitPressed,
        ),
      ],
    );
  }
}
