import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/widget/custom_app_bar.dart';
import 'package:alias/src/feature/commands/presentation/bloc/commands_bloc.dart';
import 'package:alias/src/feature/commands/presentation/view/commands_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandsPage extends StatelessWidget {
  const CommandsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.locator.get<CommandsBloc>()
        ..add(
          const CommandsEvent.loadCommands(),
        ),
      child: const Scaffold(
        appBar: CustomAppBar(title: 'Команды'),
        body: CommandsView(),
      ),
    );
  }
}
