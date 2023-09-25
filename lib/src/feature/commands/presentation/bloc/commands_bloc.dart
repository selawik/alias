import 'package:alias/src/feature/commands/domain/models/command.dart';
import 'package:alias/src/feature/commands/domain/repository/commands_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'commands_bloc.freezed.dart';
part 'commands_event.dart';
part 'commands_state.dart';

@injectable
class CommandsBloc extends Bloc<CommandsEvent, CommandsState> {
  final ICommandsRepository _repository;

  CommandsBloc({
    required ICommandsRepository repository,
  })  : _repository = repository,
        super(const CommandsState.loading()) {
    on<_LoadCommands>(_onLoadCommands);
    on<_AddCommand>(_onAddCommand);
    on<_RemoveCommand>(_onRemoveCommand);
  }

  Future<void> _onLoadCommands(
      _LoadCommands event, Emitter<CommandsState> emit) async {
    emit(const CommandsState.loading());

    final result = await _repository.loadCommands();

    result.fold(
      (failure) => null,
      (commands) {
        if (commands.length > 1) {
          emit(
            CommandsState.loaded(
              addedCommands: commands.toSet().take(2).toSet(),
              allCommands: commands.toSet(),
            ),
          );
        }

        //TODO add not loaded state
      },
    );
  }

  Future<void> _onAddCommand(
    _AddCommand event,
    Emitter<CommandsState> emit,
  ) async {
    final currentState = state;
    if (currentState is _Loaded) {
      if (currentState.allCommands.isNotEmpty) {
        final availableCommands = currentState.allCommands.difference(
          currentState.addedCommands,
        );

        if (availableCommands.isNotEmpty) {
          final newAddedCommands = {
            ...currentState.addedCommands,
            availableCommands.first
          };

          emit(currentState.copyWith(addedCommands: newAddedCommands));
        }
      }
    }
  }

  Future<void> _onRemoveCommand(
    _RemoveCommand event,
    Emitter<CommandsState> emit,
  ) async {
    final currentState = state;

    if (currentState is _Loaded) {
      if (currentState.addedCommands.isNotEmpty) {
        final newAddedCommands = {...currentState.addedCommands}
          ..remove(event.command);

        emit(currentState.copyWith(addedCommands: newAddedCommands));
      }
    }
  }
}
