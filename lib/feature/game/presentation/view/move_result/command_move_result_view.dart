import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/router/app_router.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:alias/feature/game/domain/model/game_answer.dart';
import 'package:alias/feature/game/domain/model/playing_command.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:alias/feature/game/presentation/view/move_result/widget/command_mode_result_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alias/core/injection.dart' as di;

class CommandMoveResultView extends StatelessWidget {
  const CommandMoveResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
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
              var answer = answers[index];
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
    var bloc = BlocProvider.of<GameBloc>(context);
    var textStyle = Theme.of(context).textTheme.displayMedium;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ThemeBuilder.cardDecoration,
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
              bloc.add(GameEvent.changeAnswer(answer: answer));
            },
          ),
        ],
      ),
    );
  }

  Widget _buildContinueButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 16 + MediaQuery.of(context).padding.bottom,
        left: 16,
        right: 16,
      ),
      child: ElevatedButton(
        onPressed: () {
          var gameBloc = BlocProvider.of<GameBloc>(context);
          gameBloc.add(const GameEvent.moveResultWatched());
          var router = di.locator.get<AppRouter>();
          router.replace(const CommandsStatsPageRoute());
        },
        child: const Text('????????????????????'),
      ),
    );
  }

  Widget _buildEmptyListPlaceholder(BuildContext context) {
    return const Center(child: Text('?????? ????????..'));
  }
}
