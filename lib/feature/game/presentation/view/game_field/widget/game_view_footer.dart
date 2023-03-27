import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/constants/assets_catalog.dart';
import 'package:alias/feature/game/presentation/bloc/answer_bloc.dart';
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
          gameIsReady: (settings, commands, nextPlayingCommand) =>
              const StartGameButton(),
          waitingForAnswer: (word) => _buildAnswerButtons(context),
        );
      },
    );
  }

  Widget _buildAnswerButtons(BuildContext context) {
    var answerBloc = BlocProvider.of<AnswerBloc>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: AnswerButton(
              asset: AssetsCatalog.icCross,
              onPress: () => answerBloc.add(const AnswerEvent.playSkipAnimation()),
              color: AppColors.red,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: AnswerButton(
              asset: AssetsCatalog.icDone,
              onPress: () => answerBloc.add(const AnswerEvent.playCountAnimation()),
              color: AppColors.green,
            ),
          ),
        ],
      ),
    );
  }
}
