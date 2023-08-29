import 'package:alias/src/feature/game/domain/model/word.dart';
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:alias/src/feature/game/presentation/view/game_field/widget/game_main_circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameWordCard extends StatelessWidget {
  final Word word;

  const GameWordCard({
    required this.word,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Draggable<int>(
      feedback: GameMainCircleWidget(title: word.name),
      childWhenDragging: SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.9,
      ),
      onDragEnd: (details) => _onDragEnd(details, context),
      child: Center(child: GameMainCircleWidget(title: word.name)),
    );
  }

  Future<void> _onDragEnd(
      DraggableDetails details, BuildContext context) async {
    final bloc = BlocProvider.of<GameBloc>(context);

    if (details.offset.dx > 0 &&
        details.offset.dx.abs() >= MediaQuery.of(context).size.width / 3) {
      //_audioPlayer.play(AssetSource(AssetsCatalog.onExplainedWordSound));
      bloc.add(const GameEvent.countWord());
    }

    if (details.offset.dx < 0) {
      //_audioPlayer.play(AssetSource(AssetsCatalog.onSkippedWordSound));
      bloc.add(const GameEvent.skipWord());
    }
  }
}
