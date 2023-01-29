import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:flutter/material.dart';

class BaseSelectorItem extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final bool isSelected;

  const BaseSelectorItem({
    Key? key,
    required this.onTap,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: ThemeBuilder.defaultBorderRadius,
          color: isSelected ? AppColors.buttonColor : AppColors.white,
          boxShadow: ThemeBuilder.defaultShadow,
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: isSelected ? AppColors.white : AppColors.black,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}
