import 'package:alias/core/injection.dart' as di;
import 'package:alias/core/widget/custom_app_bar.dart';
import 'package:alias/feature/game_settings/presentation/bloc/game_settings_bloc.dart';
import 'package:alias/feature/game_settings/presentation/view/game_settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameSettingsPage extends StatelessWidget {
  const GameSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Настройки игры'),
      body: BlocProvider(
        create: (context) => di.locator<GameSettingsBloc>(),
        child: const GameSettingsView(),
      ),
    );
  }
}
