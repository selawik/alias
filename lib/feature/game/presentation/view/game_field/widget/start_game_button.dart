import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartGameButton extends StatelessWidget {
  const StartGameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
