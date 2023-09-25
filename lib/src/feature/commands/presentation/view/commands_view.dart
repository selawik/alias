import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:alias/src/core/widget/custom_progress_indicator.dart';
import 'package:alias/src/feature/commands/domain/models/command.dart';
import 'package:alias/src/feature/commands/presentation/bloc/commands_bloc.dart';
import 'package:alias/src/feature/commands/presentation/view/widget/command_list_item.dart';
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandsView extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  CommandsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Expanded(
              child: _buildList(context),
            ),
            const SizedBox(height: 16),
            _buildAddButton(context),
            const SizedBox(height: 16),
            _buildContinueButton(context),
          ],
        ),
      ],
    );
  }

  Widget _buildList(BuildContext context) {
    return BlocBuilder<CommandsBloc, CommandsState>(
      builder: (context, state) {
        return state.when(
          initial: Container.new,
          loading: () => const Center(child: CustomProgressIndicator()),
          loaded: (addedCommands, allCommands) =>
              _buildCommandsList(context, addedCommands.toList()),
        );
      },
    );
  }

  Widget _buildCommandsList(
    BuildContext context,
    List<Command> addedCommands,
  ) {
    return ListView.separated(
      shrinkWrap: true,
      controller: _scrollController,
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemBuilder: (context, index) =>
          CommandListItem(command: addedCommands[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: addedCommands.length,
    );
  }

  Widget _buildAddButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () {
          HapticFeedback.mediumImpact();
          _onAddPressed(context);
        },
        style: ThemeBuilder.orangeButtonStyle,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }

  Widget _buildContinueButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom + 16,
        left: 16,
        right: 16,
      ),
      child: ElevatedButton(
        onPressed: () => _onContinuePressed(context),
        child: const Text('Продолжить'),
      ),
    );
  }

  void _onContinuePressed(BuildContext context) {
    HapticFeedback.mediumImpact();
    final router = di.locator.get<AppRouter>();
    final gameBloc = BlocProvider.of<GameBloc>(context);
    final commandsBloc = BlocProvider.of<CommandsBloc>(context);

    commandsBloc.state.whenOrNull(loaded: (addedCommands, allCommands) {
      gameBloc
          .add(GameEvent.initializeCommands(commands: addedCommands.toList()));
    });

    router.push(const GameSettingsPageRoute());
  }

  void _onAddPressed(BuildContext context) {
    BlocProvider.of<CommandsBloc>(context).add(
      const CommandsEvent.addCommand(),
    );

    Future.delayed(
      const Duration(microseconds: 300),
      () => _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      ),
    );
  }
}