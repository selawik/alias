import 'package:alias/feature/commands/data/models/command.dart';
import 'package:alias/feature/game/domain/playing_command.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:alias/feature/game/presentation/view/commands_stats/widget/commands_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommandsStatsView extends StatelessWidget {
  const CommandsStatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          gameIsReady: (settings, commands) {
            return _buildStatsView(context, commands);
          },
        );
      },
    );
  }

  Widget _buildStatsView(BuildContext context, List<PlayingCommand> commands) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(),
        Expanded(child: CommandsList(commands: commands)),
        const SizedBox(height: 16),
        _buildNextCommandWidget(context, commands.first),
        const SizedBox(height: 16),
        _buildStartButton(context),
        SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
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

  Widget _buildStartButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Начать игру'),
      ),
    );
  }
}
