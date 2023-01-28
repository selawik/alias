import 'package:alias/core/router/app_router.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alias/core/injection.dart' as di;
import 'widget/game_view_header.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var router = di.locator.get<AppRouter>();
    var gameBloc = BlocProvider.of<GameBloc>(context);

    return BlocListener<GameBloc, GameState>(
      listener: (context, state) {
        state.whenOrNull(
          commandMoveIsOver: () => router.push(
            const CommandMoveResultPageRoute(),
          ),
        );
      },
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 16),
          const GameHeader(),
          Center(
            child: ElevatedButton(
              onPressed: () => gameBloc.add(const GameEvent.startGame()),
              child: const Text('start'),
            ),
          )
        ],
      ),
    );
  }
}
