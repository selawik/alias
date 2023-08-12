import 'package:alias/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:alias/feature/game/presentation/view/game_field/widget/animated_word_card.dart';
import 'package:alias/feature/game/presentation/view/game_field/widget/game_main_circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameMainBlock extends StatelessWidget {
  const GameMainBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (prevState, currentState) {
        return prevState.maybeWhen(
          orElse: () => true,
          lastWord: (word) => currentState.maybeWhen(
            orElse: () => true,
            commandMoveIsOver: (command, answers, score) => false,
          ),
          waitingForAnswer: (word) => currentState.maybeWhen(
            orElse: () => true,
            gamePaused: () => false,
          ),
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: GameMainCircleWidget(
              title: 'Нажмите начать, когда будете готовы',
            ),
          ),
          waitingForAnswer: (word) => AnimatedWordCard(
            word: word,
            key: ValueKey(word),
          ),
          lastWord: (word) => AnimatedWordCard(
            word: word,
            key: ValueKey(word),
          ),
        );
      },
    );
  }
}
