import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/feature/game/presentation/bloc/answer_bloc/answer_bloc.dart';
import 'package:alias/src/feature/game/presentation/view/game_field/game_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: BlocProvider(
          create: (context) => di.locator.get<AnswerBloc>(),
          child: const GameView(),
        ),
      ),
    );
  }
}
