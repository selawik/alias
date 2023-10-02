import 'package:alias/src/core/constants/app_colors.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:alias/src/feature/theming/presentation/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseSelectorItem extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final bool isSelected;

  const BaseSelectorItem({
    required this.onTap,
    required this.title,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeBloc = context.read<ThemeBloc>();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: ThemeBuilder.defaultBorderRadius,
          color: isSelected
              ? AppColors.buttonColor
              : themeBloc.state.isDarkThemeEnabled
                  ? AppColors.black
                  : AppColors.white,
          boxShadow: ThemeBuilder.defaultShadow,
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: isSelected ? AppColors.white : null,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}
