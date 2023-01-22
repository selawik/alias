import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:alias/feature/commands/data/models/command.dart';
import 'package:alias/feature/commands/presentation/bloc/commands_bloc.dart';
import 'package:flutter/material.dart';
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
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) =>
          _buildListItem(context, addedCommands[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemCount: addedCommands.length,
    );
  }

  Widget _buildListItem(BuildContext context, Command item) {
    var bloc = BlocProvider.of<CommandsBloc>(context);
    var textStyle = Theme.of(context).textTheme.headline2;

    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lavender,
        borderRadius: ThemeBuilder.defaultBorderRadius,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              item.name,
              style: textStyle?.copyWith(color: AppColors.black),
            ),
          ),
          const SizedBox(width: 8),
          bloc.state.whenOrNull(loaded: (addedCommands) {
                if (addedCommands.length > 1) {
                  return GestureDetector(
                    onTap: () => bloc.add(
                      CommandsEvent.removeCommand(command: item),
                    ),
                    child: const Icon(
                      Icons.remove,
                      size: 20,
                    ),
                  );
                }
                return null;
              }) ??
              Container(
                height: 20,
              ),
        ],
      ),
    );
  }

  Widget _buildAddButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: ElevatedButton(
        onPressed: () {
          //HapticFeedback.mediumImpact();
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
    var commandsBloc = BlocProvider.of<CommandsBloc>(context);
    //var aliasBloc = BlocProvider.of<AliasBloc>(context);
    var state = commandsBloc.state;

    // HapticFeedback.mediumImpact();
    //
    // if (state is AddCommands) {
    //   aliasBloc.add(CommandsFormedEvent(commands: state.addedCommands));
    // }
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

  // void _onBlockListenerTrigger(BuildContext context, AliasState state) {
  //   var commandsBloc = BlocProvider.of<CommandsBloc>(context);
  //   var commandsState = commandsBloc.state;
  //
  //   if (state is CommandStep && commandsState is AddCommands) {
  //     di.locator<AppRouter>().replace(const GamePageRoute());
  //   }
  //
  //   if (state is WordsLoadingError) {
  //     di.locator<AppRouter>().pop();
  //     showMessage(context, state.failure.message);
  //   }
  // }
}
