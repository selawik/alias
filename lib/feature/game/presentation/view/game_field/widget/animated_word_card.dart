import 'package:alias/feature/game/domain/model/word.dart';
import 'package:alias/feature/game/presentation/bloc/answer_bloc.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:alias/feature/game/presentation/view/game_field/widget/game_word_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimatedWordCard extends StatefulWidget {
  final Word word;

  const AnimatedWordCard({
    Key? key,
    required this.word,
  }) : super(key: key);

  @override
  State<AnimatedWordCard> createState() => _AnimatedWordCardState();
}

class _AnimatedWordCardState extends State<AnimatedWordCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  );

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.bounceOut,
  ));

  @override
  void didUpdateWidget(covariant AnimatedWordCard oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    super.initState();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        context.read<AnswerBloc>().state.whenOrNull(
            skipping: () {
              context.read<GameBloc>().add(const GameEvent.skipWord());
              context.read<AnswerBloc>().add(const AnswerEvent.reset());
            },
            counting: () =>
                context.read<GameBloc>().add(const GameEvent.countWord()));
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AnswerBloc, AnswerState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          counting: () => _controller.forward(),
          skipping: () => _controller.forward(),
        );
      },
      child: SlideTransition(
        position: _offsetAnimation,
        child: GameWordCard(
          word: widget.word,
        ),
      ),
    );
  }
}
