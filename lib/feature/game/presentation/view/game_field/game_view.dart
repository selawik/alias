import 'package:alias/core/router/app_router.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:alias/feature/game/presentation/view/game_field/widget/game_main_block.dart';
import 'package:alias/feature/game/presentation/view/game_field/widget/game_view_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alias/core/injection.dart' as di;
import 'widget/game_view_header.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var router = di.locator.get<AppRouter>();

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
          SizedBox(height: MediaQuery.of(context).padding.top + 16),
          const GameHeader(),
          const Spacer(),
          const GameMainBlock(),
          const Spacer(),
          const Expanded(flex: 3, child: GameViewFooter()),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
        ],
      ),
    );
  }
}
