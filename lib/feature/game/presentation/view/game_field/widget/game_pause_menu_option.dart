import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GameFieldPauseMenuOption extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  final void Function() callback;

  const GameFieldPauseMenuOption({
    Key? key,
    required this.color,
    required this.text,
    required this.icon,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: () {
        HapticFeedback.mediumImpact();
        callback();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 36.0, color: color),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}