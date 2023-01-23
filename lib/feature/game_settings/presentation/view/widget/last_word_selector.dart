import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/base_selector_item.dart';
import 'package:flutter/material.dart';

class LastWordSelector extends StatelessWidget {
  LastWordSelector({Key? key}) : super(key: key);

  BinarySelectorType selectedItem = BinarySelectorType.enabled;

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
    return Wrap(
      spacing: 12,
      children: BinarySelectorType.values
          .map(
            (element) => BaseSelectorItem(
              onTap: () {},
              isSelected: element == selectedItem,
              title: element.toString(),
            ),
          )
          .toList(),
    );
  }
}