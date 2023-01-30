import 'package:alias/feature/game_settings/data/models/word.dart';

enum GameAnswerType {
  count,
  skip;

  bool get isCount => this == GameAnswerType.count;
}


class GameAnswer {
  final Word word;
  GameAnswerType _type;

  GameAnswerType get type => _type;


  GameAnswer.count({required this.word}) : _type = GameAnswerType.count;

  GameAnswer.skip({required this.word}) : _type = GameAnswerType.skip;


  void changeAnswer() {
    _type = _type.isCount ? GameAnswerType.skip : GameAnswerType.count;
  }
}