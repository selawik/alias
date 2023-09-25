import 'package:alias/src/feature/commands/domain/repository/commands_repository.dart';
import 'package:alias/src/feature/commands/presentation/bloc/commands_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mock_commands_repository.dart';

void main() {
  group('Category Bloc Test', () {
    late CommandsBloc commandsBloc;
    ICommandsRepository repository;

    setUp(() {
      repository = MockCommandsRepository();
      commandsBloc = CommandsBloc(repository: repository);
    });

    blocTest<CommandsBloc, CommandsState>('123',
        build: () => commandsBloc,
        act: (bloc) => bloc.add(const CommandsEvent.loadCommands()),
        expect: () => [
              const CommandsState.loading(),
              // const CommandsState.loaded(
              //   addedCommands: [Command(commandId: 1, name: '')],
              // ),
            ]);

    tearDown(() => commandsBloc.close());
  });
}
