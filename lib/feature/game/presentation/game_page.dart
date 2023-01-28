import 'package:alias/core/widget/custom_app_bar.dart';
import 'package:alias/feature/game/presentation/view/game_view.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GameView(),
    );
  }
}
