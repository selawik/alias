part of 'answer_bloc.dart';

@freezed
class AnswerEvent with _$AnswerEvent {
  const factory AnswerEvent.playCountAnimation() = _PlayCountAnimation;
  const factory AnswerEvent.playSkipAnimation() = _PlaySkipAnimation;
  const factory AnswerEvent.reset() = _Reset;
}
