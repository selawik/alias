import 'package:alias/src/core/constants/app_colors.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String asset;
  final Color color;
  final void Function() onPress;

  const AnswerButton({
    required this.asset,
    required this.color,
    required this.onPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ThemeBuilder.blueButtonStyle.copyWith(
        shape: const MaterialStatePropertyAll(CircleBorder()),
        minimumSize: const MaterialStatePropertyAll(Size(100, 100)),
        backgroundColor: MaterialStatePropertyAll(color),
      ),
      child: Image.asset(
        asset,
        color: AppColors.white,
      ),
    );
  }
}
