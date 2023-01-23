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
          border: isSelected
              ? Border.all(color: AppColors.appBackgroundDark)
              : null,
          color: isSelected ? AppColors.buttonColor : AppColors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(2, 3),
              blurRadius: 5,
              color: AppColors.black.withOpacity(0.4),
            ),
          ],
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: isSelected ? null : AppColors.black,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}
