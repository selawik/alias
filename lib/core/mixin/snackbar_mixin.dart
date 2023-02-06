import 'package:alias/core/theme/theme_builder.dart';
import 'package:flutter/material.dart';

mixin SnackbarMixin on StatelessWidget {
  void showMessage(BuildContext context, String message) {
    var snackBar = SnackBar(
      shape: RoundedRectangleBorder(
        borderRadius: ThemeBuilder.defaultBorderRadius,
      ),
      behavior: SnackBarBehavior.floating,
      content: Text(message),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
