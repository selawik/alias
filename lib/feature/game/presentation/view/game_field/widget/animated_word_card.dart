import 'package:alias/feature/game/domain/model/word.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:alias/feature/game/presentation/view/game_field/widget/game_word_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimatedWordCard extends StatefulWidget {
  final Word word;

  AnimatedWordCard({
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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameBloc, GameState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {}, skippingWord: (word) {
              print('123123');
              return _controller.forward();
            });
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
