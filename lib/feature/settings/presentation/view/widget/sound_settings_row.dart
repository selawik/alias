import 'package:flutter/cupertino.dart';

class SoundSettingsRow extends StatelessWidget {
  const SoundSettingsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Настройки'),
        CupertinoSwitch(value: true, onChanged: (value) {}),
      ],
    );
  }
}
