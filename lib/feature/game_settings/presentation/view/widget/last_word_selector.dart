import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:alias/feature/game_settings/presentation/bloc/game_settings_bloc.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/base_selector_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LastWordSelector extends StatelessWidget {
  const LastWordSelector({Key? key, required this.selectedItem})
      : super(key: key);

  final BinarySelectorMode selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Последнее слово', style: Theme.of(context).textTheme.headline1),
        const SizedBox(height: 16),
        _buildValuesList(context),
      ],
    );
  }

  Widget _buildValuesList(BuildContext context) {
    var items = BinarySelectorMode.values.map(
      (mode) => BaseSelectorItem(
        onTap: () => _onLastWordModeTap(context, mode),
        isSelected: mode == selectedItem,
        title: mode.toString(),
      ),
    );

    return Wrap(spacing: 12, runSpacing: 12, children: items.toList());
  }

  void _onLastWordModeTap(BuildContext context, BinarySelectorMode mode) {
    var bloc = BlocProvider.of<GameSettingsBloc>(context);

    bloc.add(GameSettingsEvent.lastWordModeChanged(mode: mode));
  }
}
