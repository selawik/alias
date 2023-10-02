import 'package:flutter/cupertino.dart';

class SoundSettingsRow extends StatelessWidget {
  const SoundSettingsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Звук'),
        CupertinoSwitch(value: true, onChanged: (value) {}),
      ],
    );
  }
}
