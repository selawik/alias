import 'package:alias/src/core/widget/custom_app_bar.dart';
import 'package:alias/src/feature/settings/presentation/view/settings_view.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Настройки',
      ),
      body: SettingsView(),
    );
  }
}
