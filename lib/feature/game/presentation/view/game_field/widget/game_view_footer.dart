import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/constants/assets_catalog.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
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
          gameIsReady: (settings, commands) => _buildStartButton(context),
          waitingForAnswer: (word) => _buildAnswerButtons(context),
        );
      },
    );
  }

  Widget _buildStartButton(BuildContext context) {
    var gameBloc = BlocProvider.of<GameBloc>(context);

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () => gameBloc.add(const GameEvent.startGame()),
          child: const Text('Начать'),
        ),
      ),
    );
  }

  Widget _buildAnswerButtons(BuildContext context) {
    var gameBloc = BlocProvider.of<GameBloc>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () => gameBloc.add(const GameEvent.skipWord()),
              style: ThemeBuilder.blueButtonStyle.copyWith(
                shape: const MaterialStatePropertyAll(CircleBorder()),
                minimumSize: const MaterialStatePropertyAll(Size(100, 100)),
                backgroundColor: const MaterialStatePropertyAll(AppColors.red),
              ),
              child: Image.asset(
                AssetsCatalog.icCross,
                color: AppColors.white,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton(
              onPressed: () => gameBloc.add(const GameEvent.countWord()),
              style: ThemeBuilder.blueButtonStyle.copyWith(
                minimumSize: const MaterialStatePropertyAll(Size(100, 100)),
                shape: const MaterialStatePropertyAll(CircleBorder()),
                backgroundColor:
                    const MaterialStatePropertyAll(AppColors.green),
              ),
              child: Image.asset(AssetsCatalog.icDone, color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
