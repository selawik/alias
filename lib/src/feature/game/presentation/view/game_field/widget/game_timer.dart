import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameTimer extends StatefulWidget {
  const GameTimer({super.key});

  @override
  State<GameTimer> createState() => _GameTimerState();
}

class _GameTimerState extends State<GameTimer> with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Duration duration;

  @override
  void initState() {
    super.initState();

    final gameBloc = BlocProvider.of<GameBloc>(context);

    gameBloc.state.whenOrNull(
        gameIsReady: (settings, commands, nextPlayingCommand) {
      duration = settings.moveTime.getDuration();
    });

    controller = AnimationController(vsync: this, reverseDuration: duration);

    controller
      ..value = duration.inSeconds.toDouble()
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.dismissed) {
            BlocProvider.of<GameBloc>(context).add(
              const GameEvent.timeIsLeft(),
            );
          }
        },
      );
  }

  @override
  void dispose() {
    super.dispose();

    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameBloc, GameState>(
      listener: (context, state) {
        state.whenOrNull(
          gamePaused: () => controller.stop(),
          gameOver: (commands) => controller.stop(),
          waitingForAnswer: (word) {
            controller.reverse(
              from: controller.value == 0
                  ? duration.inSeconds.toDouble()
                  : controller.value,
            );
          },
        );
      },
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          final count = controller.reverseDuration! * controller.value;
          final textTheme = Theme.of(context).textTheme;

          return Column(
            children: [
              Text(
                (count.inSeconds).toString().padLeft(1, '0'),
                style: textTheme.headlineLarge?.copyWith(
                    color: count.inSeconds < 5 ? Colors.red : null,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ' секунд',
                style: textTheme.headlineMedium?.copyWith(
                  color: count.inSeconds < 5 ? Colors.red : null,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
