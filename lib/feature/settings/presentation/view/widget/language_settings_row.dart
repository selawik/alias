import 'package:flutter/cupertino.dart';

class LanguageSettingsRow extends StatelessWidget {
  const LanguageSettingsRow({Key? key}) : super(key: key);

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
