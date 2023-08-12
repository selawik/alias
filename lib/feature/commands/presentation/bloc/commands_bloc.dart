import 'package:alias/feature/commands/domain/models/command.dart';
import 'package:alias/feature/commands/domain/usercases/load_commands.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'commands_bloc.freezed.dart';
part 'commands_event.dart';
part 'commands_state.dart';

@injectable
class CommandsBloc extends Bloc<CommandsEvent, CommandsState> {
  final LoadCommands _loadCommands;

  CommandsBloc({
    required LoadCommands loadCommandsUseCase,
  })  : _loadCommands = loadCommandsUseCase,
        super(const CommandsState.initial()) {
    on<_LoadCommands>(_onLoadCommands);
    on<_AddCommand>(_onAddCommand);
    on<_RemoveCommand>(_onRemoveCommand);
  }

  List<Command> _allCommands = [];
  List<Command> _addedCommands = [];

  Future<void> _onLoadCommands(
      _LoadCommands event, Emitter<CommandsState> emit) async {
    emit(const CommandsState.loading());

    final result = await _loadCommands.execute();

    result.fold(
      (failure) => null,
      (commands) {
        _allCommands = commands;
        _addInitialCommands();
        emit(CommandsState.loaded(addedCommands: _addedCommands));
      },
    );
  }

  Future<void> _onAddCommand(
      _AddCommand event, Emitter<CommandsState> emit) async {
    if (_allCommands.isNotEmpty) {
      _addCommand();

      emit(CommandsState.loaded(addedCommands: _addedCommands));
    }
  }

  Future<void> _onRemoveCommand(
      _RemoveCommand event, Emitter<CommandsState> emit) async {
    _allCommands.add(event.command);

    final addedCommands = List<Command>.from(_addedCommands)
      ..remove(event.command);

    _addedCommands = addedCommands;

    emit(CommandsState.loaded(addedCommands: _addedCommands));
  }

  void _addCommand() {
    final command = _allCommands.first;
    final addedCommands = List<Command>.from(_addedCommands)..add(command);

    _addedCommands = addedCommands;

    _allCommands.removeAt(0);
  }

  void _addInitialCommands() {
    if (_allCommands.length > 1) {
      _addedCommands.addAll(_allCommands.getRange(0, 2));
      _allCommands.removeRange(0, 2);
    } else if (_allCommands.isNotEmpty) {
      _addCommand();
    }
  }
}
