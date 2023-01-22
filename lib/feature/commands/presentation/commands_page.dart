import 'package:alias/core/injection.dart' as di;
import 'package:alias/feature/commands/presentation/bloc/commands_bloc.dart';
import 'package:alias/feature/commands/presentation/view/commands_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandsPage extends StatelessWidget {
  const CommandsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.locator.get<CommandsBloc>()
        ..add(const CommandsEvent.loadCommands()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Команды'),
        ),
        body: CommandsView(),
      ),
    );
  }
}
