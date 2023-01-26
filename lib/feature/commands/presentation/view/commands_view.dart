import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/constants/assets_catalog.dart';
import 'package:alias/core/injection.dart' as di;
import 'package:alias/core/router/app_router.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:alias/feature/commands/data/models/command.dart';
import 'package:alias/feature/commands/presentation/bloc/commands_bloc.dart';
import 'package:flutter/cupertino.dart';
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
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemBuilder: (context, index) =>
          _buildListItem(context, addedCommands[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: addedCommands.length,
    );
  }

  Widget _buildListItem(BuildContext context, Command command) {
    var bloc = BlocProvider.of<CommandsBloc>(context);
    var textStyle = Theme.of(context).textTheme.headline2;

    return Container(
      height: 80,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: ThemeBuilder.defaultBorderRadius,
        boxShadow: ThemeBuilder.defaultShadow,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              command.name,
              style: textStyle?.copyWith(color: AppColors.black),
            ),
          ),
          const SizedBox(width: 8),
          bloc.state.whenOrNull(
                loaded: (addedCommands) {
                  if (addedCommands.length > 1) {
                    return _buildRemoveButton(context, command);
                  }
                  return null;
                },
              ) ??
              const SizedBox(),
        ],
      ),
    );
  }

  Widget _buildRemoveButton(BuildContext context, Command command) {
    var bloc = BlocProvider.of<CommandsBloc>(context);

    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () => bloc.add(
        CommandsEvent.removeCommand(command: command),
      ),
      child: Image.asset(
        AssetsCatalog.icRemove,
        width: 24,
      ),
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
