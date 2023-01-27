import 'package:alias/core/bloc/alias_bloc/alias_bloc.dart';
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
        fit: StackFit.expand,
        children: [
          BlocBuilder<GameSettingsBloc, GameSettingsState>(
            builder: (context, state) {
              return SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 16),
                    CommandMoveTimeSelector(selectedItem: state.time),
                    const SizedBox(height: 24),
                    LastWordSelector(selectedItem: state.lastWordMode),
                    const SizedBox(height: 24),
                    PenaltySelector(selectedItem: state.penaltyMode),
                  ],
                ),
              );
            },
          ),
          Positioned(
            bottom: MediaQuery.of(context).padding.bottom + 16,
            left: 0,
            right: 0,
            child: ElevatedButton(
              child: const Text('Продолжить'),
              onPressed: () => _onContinuePressed(context),
            ),
          ),
        ],
      ),
    );
  }

  void _onContinuePressed(BuildContext context) {
    var gameSettingBloc = BlocProvider.of<GameSettingsBloc>(context);
    var aliasBloc = BlocProvider.of<AliasBloc>(context);

    gameSettingBloc.state.whenOrNull(
      ready: (moveTime, lastWordMode, penaltyMode) {
        aliasBloc.add(
          AliasEvent.gameSettingsSelected(
            moveTime: moveTime,
            lastWordMode: lastWordMode,
            penaltyMode: penaltyMode,
          ),
        );
      },
    );
  }
}
