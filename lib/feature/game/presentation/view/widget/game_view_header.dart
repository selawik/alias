import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/constants/assets_catalog.dart';
import 'package:alias/core/router/app_router.dart';
import 'package:alias/feature/game/presentation/view/widget/game_pause_dialog.dart';
import 'package:alias/feature/game/presentation/view/widget/game_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alias/core/injection.dart' as di;
import 'package:flutter/services.dart';

class GameHeader extends StatelessWidget {
  const GameHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildAppBarPauseButton(context),
          const Expanded(child: GameTimer()),
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
    // var bloc = BlocProvider.of<GameBloc>(context);
    var router = di.locator<AppRouter>();

    // if (bloc.state is WaitingForAnswer) {
    //   bloc.add(PauseGame());
    // }

    HapticFeedback.mediumImpact();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => GamePauseDialog(
        onResumePressed: () {
          // if (bloc.state is GamePaused) {
          //   bloc.add(ResumeGame());
          // }

          router.pop();
        },
        //TODO do it another way
        onExitPressed: () => router.popUntil((route) => route.settings.name == 'CategoryPageRoute'),
      ),
    );
  }
}
