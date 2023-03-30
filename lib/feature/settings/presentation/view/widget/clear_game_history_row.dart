import 'package:alias/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClearGameHistoryRow extends StatelessWidget {
  const ClearGameHistoryRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        var gameBloc = BlocProvider.of<GameBloc>(context);

        gameBloc.add(const GameEvent.resetGameHistory());
      },
      child: const Text("Очистить историю"),
    );
  }
}
