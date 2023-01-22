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
    on<_AddCommand>(_onAddCommand);
  }

  List<Command> _allCommands = [];
  List<Command> _addedCommands = [];

  void _onLoadCommands(_LoadCommands event, Emitter emit) async {
    emit(const CommandsState.loading());

    final result = await loadCommands.execute();

    result.fold(
      (failure) => null,
      (commands) {
        _allCommands = commands;
        _addCommand();
        emit(CommandsState.loaded(addedCommands: _addedCommands));
      },
    );
  }

  void _onAddCommand(_AddCommand event, Emitter emit) async {
    if (_allCommands.isNotEmpty) {
      _addCommand();

      emit(CommandsState.loaded(addedCommands: _addedCommands));
    }
  }

  void _addCommand() {
    var command = _allCommands.first;
    List<Command> addedCommands = List.from(_addedCommands)..add(command);
    _addedCommands = addedCommands;

    _allCommands.removeAt(0);
  }
}
