import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
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
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.peach,
            ),
            child: const Center(
              child: Text(
                'Нажмите начать, когда будете готовы',
              ),
            ),
          ),
          waitingForAnswer: (word) => GameWordCard(word: word),
        );
      },
    );
  }
}
