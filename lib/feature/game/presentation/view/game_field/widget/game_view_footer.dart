import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/constants/assets_catalog.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:alias/feature/game/presentation/view/game_field/widget/answer_button.dart';
import 'package:alias/feature/game/presentation/view/game_field/widget/start_game_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameViewFooter extends StatelessWidget {
  const GameViewFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => _buildAnswerButtons(context),
          gameIsReady: (settings, commands) => const StartGameButton(),
          waitingForAnswer: (word) => _buildAnswerButtons(context),
        );
      },
    );
  }

  Widget _buildAnswerButtons(BuildContext context) {
    var gameBloc = BlocProvider.of<GameBloc>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: AnswerButton(
              asset: AssetsCatalog.icCross,
              onPress: () => gameBloc.add(const GameEvent.skipWord()),
              color: AppColors.red,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: AnswerButton(
              asset: AssetsCatalog.icDone,
              onPress: () => gameBloc.add(const GameEvent.countWord()),
              color: AppColors.green,
            ),
          ),
        ],
      ),
    );
  }
}
