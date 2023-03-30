import 'package:alias/feature/game/presentation/bloc/answer_bloc/answer_bloc.dart';
import 'package:alias/feature/game/presentation/view/game_field/game_view.dart';
import 'package:alias/core/injection.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

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
