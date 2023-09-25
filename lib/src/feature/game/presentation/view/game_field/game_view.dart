import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:alias/src/feature/game/presentation/view/game_field/widget/game_main_block.dart';
import 'package:alias/src/feature/game/presentation/view/game_field/widget/game_view_footer.dart';
import 'package:alias/src/feature/game/presentation/view/game_field/widget/game_view_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    final router = di.locator.get<AppRouter>();

    return BlocListener<GameBloc, GameState>(
      listenWhen: (prevState, currentState) {
        return prevState.maybeWhen(
            commandMoveIsOver: (command, answers, commandScore) => false,
            orElse: () => true);
      },
      listener: (context, state) {
        state.whenOrNull(
          commandMoveIsOver: (command, answers, commandScore) => router.push(
            const CommandMoveResultPageRoute(),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: MediaQuery.paddingOf(context).top + 16),
          const GameHeader(),
          const Spacer(),
          const GameMainBlock(),
          const Spacer(),
          const Expanded(flex: 3, child: GameViewFooter()),
          SizedBox(height: MediaQuery.paddingOf(context).bottom + 16),
        ],
      ),
    );
  }
}
