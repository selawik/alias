import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
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
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  static const freezingDuration = Duration(milliseconds: 300);

  bool buttonFreezed = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonFreezed ? null : _onAnswerPressed,
      style: ThemeBuilder.blueButtonStyle.copyWith(
        shape: const MaterialStatePropertyAll(CircleBorder()),
        minimumSize: const MaterialStatePropertyAll(Size(100, 100)),
        backgroundColor: MaterialStatePropertyAll(widget.color),
      ),
      child: Image.asset(
        widget.asset,
        color: AppColors.white,
      ),
    );
  }

  void _onAnswerPressed() {
    setState(() => buttonFreezed = true);

    Future.delayed(
      freezingDuration,
      () {
        if (mounted) {
          setState(() => buttonFreezed = false);
        }
      },
    );

    widget.onPress();
  }
}
