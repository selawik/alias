import 'package:flutter/material.dart';

mixin ShowMessageMixin on StatelessWidget {
  void showMessage(BuildContext context, String message) {
    var snackBar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
