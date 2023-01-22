import 'package:alias/feature/commands/data/models/command.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'commands_bloc.freezed.dart';
part 'commands_event.dart';
part 'commands_state.dart';

@injectable
class CommandsBloc extends Bloc<CommandsEvent, CommandsState> {
  CommandsBloc() : super(const CommandsState.initial()) {
    on<CommandsEvent>((event, emit) {});
  }
}
