import 'package:alias/src/core/constants/app_colors.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:flutter/material.dart';

class CommandScore extends StatelessWidget {
  final int score;

  const CommandScore({
    required this.score,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: _getScoreColor(),
        borderRadius: ThemeBuilder.defaultBorderRadius,
        boxShadow: ThemeBuilder.defaultShadow,
      ),
      child: Text(
        score >= 0 ? '+$score' : '$score',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }

  Color _getScoreColor() {
    if (score > 0) {
      return AppColors.green;
    }

    if (score < 0) {
      return AppColors.red;
    }

    return AppColors.lavender;
  }
}
