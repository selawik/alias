import 'package:alias/src/feature/commands/domain/entity/command_entity.dart';
import 'package:alias/src/feature/commands/domain/repository/commands_repository.dart';
import 'package:alias/src/feature/commands/presentation/bloc/commands_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mock_commands_repository.dart';

void main() {
  group(
    'Commands Bloc Test',
    () {
      late CommandsBloc commandsBloc;
      ICommandsRepository repository;

      setUp(() {
        repository = MockCommandsRepository();
        commandsBloc = CommandsBloc(repository: repository);
      });

      blocTest<CommandsBloc, CommandsState>(
        'Initial commands loading',
        build: () => commandsBloc,
        act: (bloc) => bloc.add(const CommandsEvent.loadCommands()),
        wait: const Duration(seconds: 1),
        expect: () => [
          const CommandsState.loading(),
          CommandsState.loaded(
            addedCommands: {
              const CommandEntity(commandId: 1, name: 'Бобры'),
              const CommandEntity(commandId: 2, name: 'Кошки'),
            },
            allCommands: mockCommands.toSet(),
          ),
        ],
      );

      blocTest<CommandsBloc, CommandsState>(
        'Add command test',
        build: () => commandsBloc,
        setUp: () async {
          commandsBloc.add(const CommandsEvent.loadCommands());
        },
        act: (bloc) async => Future.delayed(
          const Duration(seconds: 1),
          () => bloc.add(
            const CommandsEvent.addCommand(),
          ),
        ),
        skip: 1,
        expect: () => [
          CommandsState.loaded(
            addedCommands: {
              const CommandEntity(commandId: 1, name: 'Бобры'),
              const CommandEntity(commandId: 2, name: 'Кошки'),
              const CommandEntity(commandId: 3, name: 'Собаки'),
            },
            allCommands: mockCommands.toSet(),
          ),
        ],
      );

      blocTest<CommandsBloc, CommandsState>(
        'Remove command test',
        build: () => commandsBloc,
        setUp: () async {
          commandsBloc.add(const CommandsEvent.loadCommands());
        },
        act: (bloc) async => Future.delayed(
          const Duration(seconds: 1),
          () => bloc
            ..add(const CommandsEvent.addCommand())
            ..add(
              const CommandsEvent.removeCommand(
                command: CommandEntity(commandId: 2, name: 'Кошки'),
              ),
            ),
        ),
        skip: 2,
        expect: () => [
          CommandsState.loaded(
            addedCommands: {
              const CommandEntity(commandId: 1, name: 'Бобры'),
              const CommandEntity(commandId: 3, name: 'Собаки'),
            },
            allCommands: mockCommands.toSet(),
          ),
        ],
      );

      tearDown(() => commandsBloc.close());
    },

    //TODO (@selawik) Add remove test case
  );
}
