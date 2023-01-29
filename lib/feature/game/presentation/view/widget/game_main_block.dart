import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:flutter/material.dart';

class GameMainBlock extends StatelessWidget {
  final Word word;

  const GameMainBlock({
    Key? key,
    required this.word,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.headline1;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        color: AppColors.yellow,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: word.name,
                style: textStyle?.copyWith(
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
