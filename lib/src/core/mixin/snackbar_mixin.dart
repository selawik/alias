import 'package:alias/src/core/constants/app_colors.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:flutter/material.dart';

mixin SnackbarMixin on StatelessWidget {
  void showMessage(BuildContext context, String message) {
    final snackBar = SnackBar(
      shape: RoundedRectangleBorder(
        borderRadius: ThemeBuilder.defaultBorderRadius,
      ),
      behavior: SnackBarBehavior.floating,
      content: Text(message),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void showError(BuildContext context, String message) {
    final snackBar = SnackBar(
      backgroundColor: AppColors.red,
      shape: RoundedRectangleBorder(
        borderRadius: ThemeBuilder.defaultBorderRadius,
      ),
      behavior: SnackBarBehavior.floating,
      content: Text(message),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
