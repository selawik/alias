import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:alias/src/core/widget/custom_progress_indicator.dart';
import 'package:alias/src/feature/commands/presentation/bloc/commands_bloc.dart';
import 'package:alias/src/feature/commands/presentation/view/widget/commands_list.dart';
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandsView extends StatefulWidget {
  const CommandsView({super.key});

  @override
  State<CommandsView> createState() => _CommandsViewState();
}

class _CommandsViewState extends State<CommandsView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Expanded(
              child: BlocBuilder<CommandsBloc, CommandsState>(
                builder: (context, state) {
                  return state.map(
                    loading: (state) => const Center(
                      child: CustomProgressIndicator(),
                    ),
                    loaded: (state) => CommandsList(
                      commands: state.addedCommands,
                      scrollController: _scrollController,
                    ),
                    error: (state) => Text(state.message),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: _onAddPressed,
                style: ThemeBuilder.orangeButtonStyle,
                child: const Icon(Icons.add, size: 40),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: _onContinuePressed,
                child: const Text('Продолжить'),
              ),
            ),
            SizedBox(height: 16 + MediaQuery.paddingOf(context).bottom),
          ],
        ),
      ],
    );
  }

  void _onAddPressed() {
    HapticFeedback.mediumImpact();

    BlocProvider.of<CommandsBloc>(context).add(
      const CommandsEvent.addCommand(),
    );

    Future.delayed(
      const Duration(milliseconds: 300),
      () => _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      ),
    );
  }

  void _onContinuePressed() {
    HapticFeedback.mediumImpact();

    final router = di.locator.get<AppRouter>();
    final gameBloc = BlocProvider.of<GameBloc>(context);
    final commandsBloc = BlocProvider.of<CommandsBloc>(context);

    commandsBloc.state.whenOrNull(
      loaded: (addedCommands, allCommands) {
        gameBloc.add(
          GameEvent.initializeCommands(
            commands: addedCommands.toList(),
          ),
        );
      },
    );

    router.push(const GameSettingsPageRoute());
  }
}
