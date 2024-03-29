import 'package:alias/src/core/constants/app_colors.dart';
import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:alias/src/feature/game/domain/entity/game_answer.dart';
import 'package:alias/src/feature/game/domain/entity/playing_command.dart';
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:alias/src/feature/game/presentation/view/move_result/widget/command_mode_result_header.dart';
import 'package:alias/src/feature/theming/presentation/bloc/theme_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandMoveResultView extends StatelessWidget {
  const CommandMoveResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: MediaQuery.paddingOf(context).top),
        Expanded(
          child: BlocBuilder<GameBloc, GameState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => _buildEmptyListPlaceholder(context),
                commandMoveIsOver: (command, answers, commandScore) =>
                    _buildListView(
                  context,
                  command: command,
                  answers: answers,
                  commandScore: commandScore,
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        _buildContinueButton(context),
      ],
    );
  }

  Widget _buildListView(
    BuildContext context, {
    required PlayingCommand command,
    required List<GameAnswer> answers,
    required int commandScore,
  }) {
    return Column(
      children: [
        const SizedBox(height: 16),
        CommandModeResultHeader(commandScore: commandScore, command: command),
        const SizedBox(height: 16),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
            itemCount: answers.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final answer = answers[index];
              return _buildResultItem(context, answer);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildResultItem(BuildContext context, GameAnswer answer) {
    final gameBloc = BlocProvider.of<GameBloc>(context);
    final themeBloc = context.read<ThemeBloc>();
    final textStyle = Theme.of(context).textTheme.displayMedium;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ThemeBuilder.cardDecoration(
        isDarkThemeEnabled: themeBloc.state.isDarkThemeEnabled,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              answer.word.name,
              style: textStyle?.copyWith(color: AppColors.black),
            ),
          ),
          CupertinoSwitch(
            value: answer.type.isCount,
            onChanged: (value) {
              HapticFeedback.mediumImpact();
              gameBloc.add(GameEvent.changeAnswer(answer: answer));
            },
          ),
        ],
      ),
    );
  }

  Widget _buildContinueButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 16 + MediaQuery.paddingOf(context).bottom,
        left: 16,
        right: 16,
      ),
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<GameBloc>(context).add(
            const GameEvent.moveResultWatched(),
          );
          di.locator.get<AppRouter>().replace(const CommandsStatsPageRoute());
        },
        child: const Text('Продолжить'),
      ),
    );
  }

  Widget _buildEmptyListPlaceholder(BuildContext context) {
    return const Center(child: Text('Нет слов..'));
  }
}
