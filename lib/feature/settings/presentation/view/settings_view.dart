import 'package:alias/feature/settings/presentation/view/widget/clear_game_history_row.dart';
import 'package:alias/feature/settings/presentation/view/widget/language_settings_row.dart';
import 'package:alias/feature/settings/presentation/view/widget/sound_settings_row.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        LanguageSettingsRow(),
        SizedBox(height: 16),
        SoundSettingsRow(),
        SizedBox(height: 16),
        ClearGameHistoryRow(),
      ],
    );
  }
}
