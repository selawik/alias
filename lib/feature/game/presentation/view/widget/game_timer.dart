import 'package:alias/core/bloc/alias_bloc/alias_bloc.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameTimer extends StatefulWidget {
  const GameTimer({Key? key}) : super(key: key);

  @override
  State<GameTimer> createState() => _GameTimerState();
}

class _GameTimerState extends State<GameTimer> with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Duration duration;

  @override
  void initState() {
    super.initState();

    var aliasBloc = BlocProvider.of<AliasBloc>(context);

    aliasBloc.state.whenOrNull(gameIsReady: (settings, words) {
      duration = settings.moveTime.getDuration();
    });

    controller = AnimationController(vsync: this, reverseDuration: duration);

    controller.value = duration.inSeconds.toDouble();

    // controller.addStatusListener((status) {
    //   if (status == AnimationStatus.dismissed) {
    //     var bloc = BlocProvider.of<GameBloc>(context);
    //
    //     bloc.add(TimeIsLeft());
    //   }
    // });

    controller.reverse(
        from: controller.value == 0
            ? duration.inSeconds.toDouble()
            : controller.value);
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
          gamePaused: () {
            controller.stop();
          },
          waitingForAnswer: () {
            controller.reverse(
              from: controller.value == 0
                  ? duration.inSeconds.toDouble()
                  : controller.value,
            );
          },
        );
      },
      // listenWhen: (previousState, currentState) {
      //   // if (currentState is WaitingForAnswer && previousState is WordsIsReady) {
      //   //   return true;
      //   // }
      //   //
      //   // if (currentState is GamePaused && previousState is WaitingForAnswer) {
      //   //   return true;
      //   // }
      //   //
      //   // if (currentState is WaitingForAnswer && previousState is GamePaused) {
      //   //   return true;
      //   // }
      //   //
      //   // return false;
      // },
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          var count = controller.reverseDuration! * controller.value;
          var textTheme = Theme.of(context).textTheme;

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
                style: textTheme.headline4?.copyWith(
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
