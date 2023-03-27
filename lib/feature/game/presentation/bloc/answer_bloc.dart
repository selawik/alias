import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'answer_event.dart';

part 'answer_state.dart';

part 'answer_bloc.freezed.dart';

@injectable
class AnswerBloc extends Bloc<AnswerEvent, AnswerState> {
  AnswerBloc() : super(const AnswerState.initial()) {
    on<_PlayCountAnimation>(
        (event, emit) => emit(const AnswerState.counting()));
    on<_PlaySkipAnimation>((event, emit) => emit(const AnswerState.skipping()));
    on<_Reset>((event, emit) => emit(const AnswerState.initial()));
  }
}
