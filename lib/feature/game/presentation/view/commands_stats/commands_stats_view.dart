import 'package:alias/feature/commands/data/models/command.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
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

  Widget _buildStatsView(BuildContext context, List<Command> commands) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(),
          Expanded(child: _buildCommandsList(context, commands)),
          ElevatedButton(onPressed: () {}, child: const Text('Начать игру')),
        ],
      ),
    );
  }

  Widget _buildCommandsList(BuildContext context, List<Command> commands) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
      itemCount: commands.length,
    );
  }
}
