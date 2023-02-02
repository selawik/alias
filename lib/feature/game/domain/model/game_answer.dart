import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_answer.freezed.dart';

enum GameAnswerType {
  count,
  skip;

  bool get isCount => this == GameAnswerType.count;

  GameAnswerType get switchedValue =>
      this == GameAnswerType.count ? GameAnswerType.skip : GameAnswerType.count;
}

@freezed
class GameAnswer with _$GameAnswer {
  const factory GameAnswer({
    required Word word,
    required GameAnswerType type,
  }) = _GameAnswer;
}
