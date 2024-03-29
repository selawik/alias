import 'package:alias/src/core/constants/app_colors.dart';
import 'package:alias/src/core/constants/assets_catalog.dart';
import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:alias/src/feature/game/presentation/view/game_field/widget/game_pause_dialog.dart';
import 'package:alias/src/feature/game/presentation/view/game_field/widget/game_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameHeader extends StatelessWidget {
  const GameHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          const Center(child: GameTimer()),
          _buildAppBarPauseButton(context),
        ],
      ),
    );
  }

  Widget _buildAppBarPauseButton(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () => _onPausePressed(context),
      child: Image.asset(
        AssetsCatalog.icPause,
        color: AppColors.buttonColor,
      ),
    );
  }

  void _onPausePressed(BuildContext context) {
    final bloc = BlocProvider.of<GameBloc>(context);
    final router = di.locator<AppRouter>();

    bloc.state.whenOrNull(
        waitingForAnswer: (word) => bloc.add(const GameEvent.pauseGame()));

    HapticFeedback.mediumImpact();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => GamePauseDialog(
        onResumePressed: () {
          bloc.state.whenOrNull(
              gamePaused: () => bloc.add(const GameEvent.resumeGame()));

          router.pop();
        },
        //TODO do it another way
        onExitPressed: () {
          bloc.add(const GameEvent.resetGame());
          router
              .popUntil((route) => route.settings.name == 'CategoryPageRoute');
        },
      ),
    );
  }
}
