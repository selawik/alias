import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameViewFooter extends StatelessWidget {
  const GameViewFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var gameBloc = BlocProvider.of<GameBloc>(context);

    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return state.when(
          gameIsReady: (settings) => _buildStartButton(context),
          waitingForAnswer: () => _buildAnswerButtons(context),
          gamePaused: () => _buildAnswerButtons(context),
          lastWord: () => _buildAnswerButtons(context),
          commandMoveIsOver: () => _buildAnswerButtons(context),
        );
      },
    );
  }

  Widget _buildStartButton(BuildContext context) {
    var gameBloc = BlocProvider.of<GameBloc>(context);

    return Center(
      child: ElevatedButton(
        onPressed: () => gameBloc.add(const GameEvent.startGame()),
        child: const Text('start'),
      ),
    );
  }

  Widget _buildAnswerButtons(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: () {}, child: Text('Нет')),
        ElevatedButton(onPressed: () {}, child: Text('Да'))
      ],
    );
  }
}
