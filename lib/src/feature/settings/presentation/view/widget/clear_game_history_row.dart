import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClearGameHistoryRow extends StatelessWidget {
  const ClearGameHistoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<GameBloc>(context).add(
          const GameEvent.resetGameHistory(),
        );
      },
      child: const Text('Очистить историю'),
    );
  }
}
