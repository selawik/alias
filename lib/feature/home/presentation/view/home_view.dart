import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/constants/assets_catalog.dart';
import 'package:alias/core/injection.dart' as di;
import 'package:alias/core/router/app_router.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:alias/feature/home/presentation/view/widget/reset_unfinished_game_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameBloc, GameState>(
      listener: (context, state) {
        print(state);
      },
      child: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => Container(),
            waitingForConfig: (game) =>
                _buildBody(context, canContinueGame: game != null),
          );
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, {required bool canContinueGame}) {
    var router = di.locator.get<AppRouter>();

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: Image.asset(AssetsCatalog.icLogo)),
              ElevatedButton(
                onPressed: () => _onNewGamePressed(
                  context,
                  canContinueGame: canContinueGame,
                ),
                child: const Text('Новая игра'),
              ),
              const SizedBox(height: 12),
              if (canContinueGame) ...[
                ElevatedButton(
                  onPressed: () => router.push(const CategoryPageRoute()),
                  child: const Text('Продолжить игру'),
                ),
              ],
              SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
            ],
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 16,
          right: 16,
          child: ElevatedButton(
            child: Image.asset(
              AssetsCatalog.icSettings,
              color: AppColors.white,
            ),
            onPressed: () => router.push(
              const SettingsPageRoute(),
            ),
          ),
        ),
      ],
    );
  }

  void _onNewGamePressed(
    BuildContext context, {
    bool canContinueGame = false,
  }) async {
    var router = di.locator.get<AppRouter>();

    if (canContinueGame) {
      var gameResetConfirmed = await showDialog<bool>(
        context: context,
        builder: (context) => const ResetUnfinishedGameDialog(),
      );

      if (gameResetConfirmed ?? false) {
        context.read<GameBloc>().add(const GameEvent.resetLastGame());
        router.push(const CategoryPageRoute());

        //resetGame
      }
    } else {
      router.push(const CategoryPageRoute());
    }
  }
}
