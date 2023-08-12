import 'package:alias/core/injection.dart' as di;
import 'package:alias/core/mixin/snackbar_mixin.dart';
import 'package:alias/core/router/app_router.dart';
import 'package:alias/core/widget/custom_progress_indicator.dart';
import 'package:alias/feature/game/domain/model/game_settings.dart';
import 'package:alias/feature/game/domain/model/playing_command.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:alias/feature/game_settings/presentation/bloc/game_settings_bloc.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/command_move_time_selector.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/last_word_selector.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/penalty_selector.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/words_to_win_count_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameSettingsView extends StatelessWidget with SnackbarMixin {
  const GameSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameBloc, GameState>(
      listener: (context, state) {
        state.whenOrNull(
          gameIsReady: _onGameIsReady,
          noWords: () => _onNoWords(context),
        );
      },
      child: Stack(
        children: [
          Stack(
            fit: StackFit.expand,
            children: [
              BlocBuilder<GameSettingsBloc, GameSettingsState>(
                builder: (context, state) {
                  return SingleChildScrollView(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: MediaQuery.of(context).padding.bottom + 100,
                    ),
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
                        const SizedBox(height: 24),
                        WordsToWinCountSelector(selectedItem: state.wordsToWin),
                      ],
                    ),
                  );
                },
              ),
              Positioned(
                bottom: MediaQuery.of(context).padding.bottom + 16,
                left: 16,
                right: 16,
                child: ElevatedButton(
                  child: const Text('Продолжить'),
                  onPressed: () => _onContinuePressed(context),
                ),
              ),
            ],
          ),
          BlocBuilder<GameBloc, GameState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: Container.new,
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
    final gameSettingBloc = BlocProvider.of<GameSettingsBloc>(context);
    final gameBloc = BlocProvider.of<GameBloc>(context);

    gameSettingBloc.state.whenOrNull(
      ready: (moveTime, lastWordMode, penaltyMode, wordsToWin) {
        final gameSettings = GameSettings(
          moveTime: moveTime,
          lastWordMode: lastWordMode,
          penaltyMode: penaltyMode,
          wordsToWin: wordsToWin,
        );

        gameBloc.add(GameEvent.initializeSettings(gameSettings: gameSettings));
      },
    );
  }

  void _onGameIsReady(
    GameSettings settings,
    List<PlayingCommand> commands,
    PlayingCommand nextPlayingCommand,
  ) {
    di.locator.get<AppRouter>().push(const CommandsStatsPageRoute());
  }

  void _onNoWords(BuildContext context) {
    di.locator.get<AppRouter>().popUntil(
          (route) => route.settings.name == 'HomePageRoute',
        );

    showMessage(
      context,
      'Вы отгадали все слова категории! Очистите историю в настройках, чтобы играть снова',
    );
  }
}
