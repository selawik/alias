import 'package:alias/src/feature/game/domain/entity/word.dart';
import 'package:alias/src/feature/game/presentation/bloc/answer_bloc/answer_bloc.dart';
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:alias/src/feature/game/presentation/view/game_field/widget/game_word_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimatedWordCard extends StatefulWidget {
  final Word word;

  const AnimatedWordCard({
    required this.word,
    super.key,
  });

  @override
  State<AnimatedWordCard> createState() => _AnimatedWordCardState();
}

class _AnimatedWordCardState extends State<AnimatedWordCard>
    with TickerProviderStateMixin {
  static const Duration animationDuration = Duration(milliseconds: 400);

  late final AnimationController _countAnimationController =
      AnimationController(duration: animationDuration, vsync: this);

  late final AnimationController _skipAnimationController =
      AnimationController(duration: animationDuration, vsync: this);

  late final Animation<Offset> _countOffsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.25),
  ).animate(
    CurvedAnimation(
      parent: _countAnimationController,
      curve: Curves.bounceOut,
    ),
  );

  late final Animation<Offset> _skipOffsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(-1.5, 0.25),
  ).animate(
    CurvedAnimation(
      parent: _skipAnimationController,
      curve: Curves.bounceOut,
    ),
  );

  @override
  void initState() {
    super.initState();

    _skipAnimationController.addStatusListener(_skipAnimationStatusCallback);
    _countAnimationController.addStatusListener(_countAnimationStatusCallback);
  }

  @override
  void dispose() {
    _skipAnimationController.dispose();
    _countAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AnswerBloc, AnswerState>(
      listener: (context, state) {
        state.whenOrNull(
          counting: () => _countAnimationController.forward(),
          skipping: () => _skipAnimationController.forward(),
        );
      },
      child: SlideTransition(
        position: _countOffsetAnimation,
        child: SlideTransition(
          position: _skipOffsetAnimation,
          child: GameWordCard(
            word: widget.word,
          ),
        ),
      ),
    );
  }

  void _countAnimationStatusCallback(AnimationStatus status) {
    final answerBloc = context.read<AnswerBloc>();
    final gameBloc = context.read<GameBloc>();

    if (status == AnimationStatus.completed) {
      answerBloc.state.whenOrNull(
        counting: () {
          gameBloc.add(const GameEvent.countWord());
          answerBloc.add(const AnswerEvent.reset());

          gameBloc.state.maybeWhen(
            orElse: () => _countAnimationController.reset(),
            lastWord: (word) => null,
          );
        },
      );
    }
  }

  void _skipAnimationStatusCallback(AnimationStatus status) {
    final answerBloc = context.read<AnswerBloc>();
    final gameBloc = context.read<GameBloc>();

    if (status == AnimationStatus.completed) {
      answerBloc.state.whenOrNull(
        skipping: () {
          gameBloc.add(const GameEvent.skipWord());
          answerBloc.add(const AnswerEvent.reset());

          // gameBloc.state.maybeWhen(
          //   orElse: () => _skipAnimationController.reset(),
          //   lastWord: (word) => null,
          // );
        },
      );
    }
  }
}
