import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:alias/feature/game/presentation/view/widget/game_main_circle_widget.dart';
import 'package:alias/feature/game/presentation/view/widget/game_word_card.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameMainBlock extends StatelessWidget {
  final Word word;

  const GameMainBlock({
    Key? key,
    required this.word,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (prevState, currentState) {
        return prevState.maybeWhen(
          orElse: () => true,
          waitingForAnswer: (word) {
            return currentState.maybeWhen(
              orElse: () => true,
              gamePaused: () => false,
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: GameMainCircleWidget(
              title: 'Нажмите начать, когда будете готовы',
            ),
          ),
          waitingForAnswer: (word) => GameWordCard(word: word),
        );
      },
    );
  }
}
