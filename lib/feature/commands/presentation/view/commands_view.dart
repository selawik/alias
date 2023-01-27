import 'package:alias/core/bloc/alias_bloc/alias_bloc.dart';
import 'package:alias/core/injection.dart' as di;
import 'package:alias/core/router/app_router.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:alias/feature/commands/data/models/command.dart';
import 'package:alias/feature/commands/presentation/bloc/commands_bloc.dart';
import 'package:alias/feature/commands/presentation/view/widget/command_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandsView extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  CommandsView({
    Key? key,
  }) : super(key: key);

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
          initial: () => Container(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (addedCommands) => _buildCommandsList(context, addedCommands),
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
    var router = di.locator.get<AppRouter>();
    var aliasBloc = BlocProvider.of<AliasBloc>(context);
    var commandsBloc = BlocProvider.of<CommandsBloc>(context);

    commandsBloc.state.whenOrNull(loaded: (addedCommands) {
      aliasBloc.add(AliasEvent.commandsFormed(commands: addedCommands));
    });

    router.push(const GameSettingsPageRoute());
  }

  void _onAddPressed(BuildContext context) {
    var bloc = BlocProvider.of<CommandsBloc>(context);

    bloc.add(const CommandsEvent.addCommand());

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
