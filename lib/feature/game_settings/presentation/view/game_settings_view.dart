import 'package:alias/feature/game_settings/presentation/bloc/game_settings_bloc.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/command_move_time_selector.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/last_word_selector.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/penalty_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameSettingsView extends StatelessWidget {
  const GameSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          BlocBuilder<GameSettingsBloc, GameSettingsState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 16),
                  CommandMoveTimeSelector(selectedItem: state.time),
                  const SizedBox(height: 24),
                  LastWordSelector(selectedItem: state.lastWordMode),
                  const SizedBox(height: 24),
                  PenaltySelector(selectedItem: state.penaltyMode),
                ],
              );
            },
          ),
          Positioned(
            bottom: MediaQuery.of(context).padding.bottom + 16,
            left: 0,
            right: 0,
            child: ElevatedButton(
              child: const Text('Продолжить'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
