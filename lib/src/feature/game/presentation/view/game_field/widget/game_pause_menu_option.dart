import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GameFieldPauseMenuOption extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  final void Function() callback;

  const GameFieldPauseMenuOption({
    required this.color,
    required this.text,
    required this.icon,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: () {
        HapticFeedback.mediumImpact();
        callback();
      },
      child: Row(
        children: [
          Icon(icon, size: 36, color: color),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
