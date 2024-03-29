import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:alias/src/feature/game/domain/entity/playing_command.dart';
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:alias/src/feature/game/presentation/view/commands_stats/widget/commands_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandsStatsView extends StatelessWidget {
  const CommandsStatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: Container.new,
          gameIsReady: (settings, commands, nextPlayingCommand) =>
              _buildStatsView(context, commands, nextPlayingCommand),
          gameOver: (commands) => _buildGameOverView(context, commands),
        );
      },
    );
  }

  Widget _buildGameOverView(
    BuildContext context,
    List<PlayingCommand> commands,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: CommandsList(commands: commands)),
        const SizedBox(height: 16),
        _buildWonCommandWidget(context, commands.first),
        const SizedBox(height: 16),
        _buildGameOverButton(context),
        SizedBox(height: MediaQuery.paddingOf(context).bottom + 16),
      ],
    );
  }

  Widget _buildStatsView(
    BuildContext context,
    List<PlayingCommand> commands,
    PlayingCommand nextPlayingCommand,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: CommandsList(commands: commands)),
        const SizedBox(height: 16),
        _buildNextCommandWidget(context, nextPlayingCommand),
        const SizedBox(height: 16),
        _buildStartButton(context),
        SizedBox(height: MediaQuery.paddingOf(context).bottom + 16),
      ],
    );
  }

  Widget _buildNextCommandWidget(BuildContext context, PlayingCommand command) {
    return Column(
      children: [
        const Text('Сейчас играет команда'),
        const SizedBox(height: 8),
        Text(
          command.name,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ],
    );
  }

  Widget _buildWonCommandWidget(BuildContext context, PlayingCommand command) {
    return Column(
      children: [
        const Text('Победила команда'),
        const SizedBox(height: 8),
        Text(
          command.name,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ],
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () {
          di.locator.get<AppRouter>().replace(const GamePageRoute());
        },
        child: const Text('Начать игру'),
      ),
    );
  }

  Widget _buildGameOverButton(BuildContext context) {
    final router = di.locator.get<AppRouter>();
    final gameBloc = BlocProvider.of<GameBloc>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () {
          gameBloc.add(const GameEvent.resetGame());
          router.replaceAll([const HomePageRoute()]);
        },
        child: const Text('В меню'),
      ),
    );
  }
}
