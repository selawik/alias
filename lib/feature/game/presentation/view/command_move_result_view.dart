import 'package:alias/core/bloc/alias_bloc/alias_bloc.dart';
import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/feature/game/domain/game_answer.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandMoveResultView extends StatelessWidget {
  const CommandMoveResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        BlocBuilder<GameBloc, GameState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => _buildEmptyListPlaceholder(context),
              commandMoveIsOver: (answers) => _buildListView(context, answers: answers),
            );
          },
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: BlocBuilder<GameBloc, GameState>(
            builder: (context, state) {
              return _buildCommandScore(context, state);
            },
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: _buildContinueButton(context),
        ),
      ],
    );
  }

  Widget _buildCommandScore(BuildContext context, GameState state) {
    var aliasBloc = BlocProvider.of<AliasBloc>(context);
    var currentAliasState = aliasBloc.state;

    // if (state is CommandStepIsOver && currentAliasState is CommandStep) {
    //   return _buildCommandBlock(context,
    //       command: currentAliasState.command, explainedWords: state.words);
    // }
    //
    return Container();
  }

  Widget _buildCommandBlock(
    BuildContext context, {
    required List<GameAnswer> answers,
  }) {
    var addedScore = 0;
    var textStyle = Theme.of(context).textTheme.headline2;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: AppColors.peach,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '',
              style: textStyle,
            ),
          ),
          Text(
            (0 + addedScore).toString(),
            style: textStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildListView(
    BuildContext context, {
    required List<GameAnswer> answers,
  }) {
    return ListView.separated(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom + 92,
        top: 76,
        left: 16,
        right: 16,
      ),
      itemCount: answers.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var answer = answers[index];
        return _buildResultItem(context, answer);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
    );
  }

  Widget _buildResultItem(BuildContext context, GameAnswer answer) {
    var bloc = BlocProvider.of<GameBloc>(context);
    var textStyle = Theme.of(context).textTheme.displayMedium;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.yellow,
        borderRadius: BorderRadius.circular(12),
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
              bloc.add(GameEvent.changeAnswer(answer: answer));
            },
          ),
        ],
      ),
    );
  }

  Widget _buildContinueButton(BuildContext context) {
    var aliasBloc = BlocProvider.of<AliasBloc>(context);
    var gameBloc = BlocProvider.of<GameBloc>(context);

    return Padding(
      padding: EdgeInsets.only(
        bottom: 16 + MediaQuery.of(context).padding.bottom,
        left: 16,
        right: 16,
      ),
      child: ElevatedButton(
        onPressed: () {
          //HapticFeedback.lightImpact();
          var gameState = gameBloc.state;
          var aliasState = aliasBloc.state;

          // if (gameState is CommandStepIsOver && aliasState is CommandStep) {
          //   aliasBloc.add(
          //     CommandFinishedStepEvent(
          //         command: aliasState.command, words: gameState.words),
          //   );
          // }
        },
        child: const Text('Продолжить'),
      ),
    );
  }

  Widget _buildEmptyListPlaceholder(BuildContext context) {
    return const Center(child: Text('Нет слов..'));
  }
}
