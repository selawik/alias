import 'package:flutter/material.dart';

import 'widget/game_view_header.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        SizedBox(height: MediaQuery.of(context).padding.top + 16),
        const GameHeader(),
      ],
    );
  }
}
