part of 'answer_bloc.dart';

@freezed
class AnswerState with _$AnswerState {
  const factory AnswerState.initial() = _Initial;

  const factory AnswerState.skipping() = _Skipping;

  const factory AnswerState.counting() = _Counting;
}
