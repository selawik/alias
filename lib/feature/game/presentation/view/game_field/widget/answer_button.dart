import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnswerButton extends StatelessWidget {
  final String asset;
  final Color color;
  final void Function() onPress;

  const AnswerButton({
    Key? key,
    required this.asset,
    required this.color,
    required this.onPress,
  }) : super(key: key);

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
