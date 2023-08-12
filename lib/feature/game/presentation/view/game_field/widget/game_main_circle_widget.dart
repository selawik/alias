import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:flutter/material.dart';

class GameMainCircleWidget extends StatelessWidget {
  final String title;

  const GameMainCircleWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.displayLarge;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: AppColors.yellow,
        shape: BoxShape.circle,
        boxShadow: ThemeBuilder.defaultShadow,
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: textStyle?.copyWith(
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
