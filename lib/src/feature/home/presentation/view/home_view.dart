import 'package:alias/src/core/constants/app_colors.dart';
import 'package:alias/src/core/constants/assets_catalog.dart';
import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:alias/src/feature/home/presentation/view/widget/reset_unfinished_game_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: Container.new,
          waitingForConfig: (game) =>
              _buildBody(context, canContinueGame: game != null),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, {required bool canContinueGame}) {
    final router = di.locator.get<AppRouter>();

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
              SizedBox(height: MediaQuery.paddingOf(context).bottom + 16),
            ],
          ),
        ),
        Positioned(
          top: MediaQuery.paddingOf(context).top + 16,
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

  Future<void> _onNewGamePressed(
    BuildContext context, {
    bool canContinueGame = false,
  }) async {
    final router = di.locator.get<AppRouter>();
    final gameBloc = context.read<GameBloc>();

    if (canContinueGame) {
      final gameResetConfirmed = await showDialog<bool>(
        context: context,
        builder: (context) => const ResetUnfinishedGameDialog(),
      );

      if (gameResetConfirmed ?? false) {
        gameBloc.add(const GameEvent.resetLastGame());
        await router.push(const CategoryPageRoute());

        //resetGame
      }
    } else {
      await router.push(const CategoryPageRoute());
    }
  }
}
