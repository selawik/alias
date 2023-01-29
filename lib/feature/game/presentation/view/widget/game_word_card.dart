import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:flutter/material.dart';

class GameWordCard extends StatelessWidget {
  final Word word;

  const GameWordCard({
    Key? key,
    required this.word,
  }) : super(key: key);

  Widget _buildCard(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.headline1;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        color: AppColors.yellow,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          word.name,
          style: textStyle?.copyWith(
            color: AppColors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Draggable<int>(
        data: 1,
        feedback: _buildCard(context),
        childWhenDragging: Container(),
        onDragEnd: (details) => _onDragEnd(details, context),
        child: _buildCard(context),
      ),
    );
  }

  void _onDragEnd(DraggableDetails details, BuildContext context) async {
    //var bloc = BlocProvider.of<GameBloc>(context);

    if (details.offset.dx > 0 &&
        details.offset.dx.abs() >= MediaQuery.of(context).size.width / 3) {
      //_audioPlayer.play(AssetSource(AssetsCatalog.onExplainedWordSound));
      //bloc.add(AchieveWord());
    }

    if (details.offset.dx < 0) {
      //_audioPlayer.play(AssetSource(AssetsCatalog.onSkippedWordSound));
      //bloc.add(SkipWord());
    }
  }
}
