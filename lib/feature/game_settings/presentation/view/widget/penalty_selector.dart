import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:alias/feature/game_settings/presentation/bloc/game_settings_bloc.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/base_selector_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PenaltySelector extends StatelessWidget {
  const PenaltySelector({
    Key? key,
    required this.selectedItem,
  }) : super(key: key);

  final BinarySelectorMode selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Штраф за пропуск', style: Theme.of(context).textTheme.headline1),
        const SizedBox(height: 16),
        _buildValuesList(context),
      ],
    );
  }

  Widget _buildValuesList(BuildContext context) {
    return Wrap(
      spacing: 12,
      children: BinarySelectorMode.values
          .map(
            (mode) => BaseSelectorItem(
              onTap: () => _onPenaltyModeTap(context, mode),
              isSelected: mode == selectedItem,
              title: mode.toString(),
            ),
          )
          .toList(),
    );
  }

  void _onPenaltyModeTap(BuildContext context, BinarySelectorMode mode) {
    var bloc = BlocProvider.of<GameSettingsBloc>(context);

    bloc.add(GameSettingsEvent.penaltyModeChanged(mode: mode));
  }
}
