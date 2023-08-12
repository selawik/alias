import 'package:flutter/cupertino.dart';

class LanguageSettingsRow extends StatelessWidget {
  const LanguageSettingsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Звук'),
        CupertinoSwitch(value: true, onChanged: (value) {}),
      ],
    );
  }
}
