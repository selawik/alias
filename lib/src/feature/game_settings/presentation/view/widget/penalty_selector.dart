import 'package:alias/src/feature/game_settings/domain/entity/binary_selector_type.dart';
import 'package:alias/src/feature/game_settings/presentation/bloc/game_settings_bloc.dart';
import 'package:alias/src/feature/game_settings/presentation/view/widget/base_selector_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PenaltySelector extends StatelessWidget {
  const PenaltySelector({required this.selectedItem, super.key});

  final BinarySelectorMode selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Штраф за пропуск',
            style: Theme.of(context).textTheme.displayLarge),
        const SizedBox(height: 16),
        _buildValuesList(context),
      ],
    );
  }

  Widget _buildValuesList(BuildContext context) {
    final items = BinarySelectorMode.values.map(
      (mode) => BaseSelectorItem(
        onTap: () => _onPenaltyModeTap(context, mode),
        isSelected: mode == selectedItem,
        title: mode.toString(),
      ),
    );

    return Wrap(spacing: 12, runSpacing: 12, children: items.toList());
  }

  void _onPenaltyModeTap(BuildContext context, BinarySelectorMode mode) {
    BlocProvider.of<GameSettingsBloc>(context).add(
      GameSettingsEvent.penaltyModeChanged(mode: mode),
    );
  }
}
