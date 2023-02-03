import 'package:alias/core/router/app_router.dart';
import 'package:alias/core/widget/custom_progress_indicator.dart';
import 'package:alias/feature/game/domain/model/game_settings.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:alias/feature/game_settings/presentation/bloc/game_settings_bloc.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/command_move_time_selector.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/last_word_selector.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/penalty_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alias/core/injection.dart' as di;

class GameSettingsView extends StatelessWidget {
  const GameSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameBloc, GameState>(
      listener: (context, state) {
        state.whenOrNull(
          gameIsReady: (settings, commands) {
            var router = di.locator.get<AppRouter>();
            router.push(const CommandsStatsPageRoute());
          },
        );
      },
      child: Stack(
        children: [
          Padding(
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
          ),
          BlocBuilder<GameBloc, GameState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Container(),
                wordsIsLoading: () =>
                    const Center(child: CustomProgressIndicator()),
              );
            },
          ),
        ],
      ),
    );
  }

  void _onContinuePressed(BuildContext context) {
    var gameSettingBloc = BlocProvider.of<GameSettingsBloc>(context);
    var gameBloc = BlocProvider.of<GameBloc>(context);

    gameSettingBloc.state.whenOrNull(
      ready: (moveTime, lastWordMode, penaltyMode) {
        var gameSettings = GameSettings(
          moveTime: moveTime,
          lastWordMode: lastWordMode,
          penaltyMode: penaltyMode,
        );

        gameBloc.add(GameEvent.initializeSettings(gameSettings: gameSettings));
      },
    );
  }
}
