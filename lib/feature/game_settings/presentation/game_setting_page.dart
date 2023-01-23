import 'package:alias/feature/game_settings/presentation/view/game_settings_view.dart';
import 'package:flutter/material.dart';

class GameSettingsPage extends StatelessWidget {
  const GameSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки игры'),
      ),
      body: const GameSettingsView(),
    );
  }
}
