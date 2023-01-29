import 'package:alias/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class GameMainCircleWidget extends StatelessWidget {
  final String title;

  const GameMainCircleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.headline1;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(
        color: AppColors.yellow,
        shape: BoxShape.circle,
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
