import 'package:alias/core/injection.dart' as di;
import 'package:alias/core/widget/custom_app_bar.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:alias/feature/game/presentation/view/game_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: '123',
      ),
      body: BlocProvider(
        create: (context) => di.locator.get<GameBloc>(),
        child: const GameView(),
      ),
    );
  }
}
