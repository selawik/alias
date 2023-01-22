import 'package:alias/feature/commands/data/models/command.dart';
import 'package:alias/feature/commands/domain/usercases/load_commands.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'commands_bloc.freezed.dart';
part 'commands_event.dart';
part 'commands_state.dart';

@injectable
class CommandsBloc extends Bloc<CommandsEvent, CommandsState> {
  final LoadCommands loadCommands;

  CommandsBloc(
    this.loadCommands,
  ) : super(const CommandsState.initial()) {
    on<_LoadCommands>(_onLoadCommands);
  }

  void _onLoadCommands(_LoadCommands event, Emitter emit) async {
    emit(const CommandsState.loading());

    final result = await loadCommands.execute();

    result.fold(
      (failure) => null,
      (data) => emit(
        CommandsState.loaded(allCommands: data, addedCommand: []),
      ),
    );
  }
}
