import 'package:alias/src/feature/settings/presentation/view/widget/clear_game_history_row.dart';
import 'package:alias/src/feature/settings/presentation/view/widget/language_settings_row.dart';
import 'package:alias/src/feature/settings/presentation/view/widget/sound_settings_row.dart';
import 'package:alias/src/feature/settings/presentation/view/widget/view_db_row.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LanguageSettingsRow(),
          SizedBox(height: 16),
          SoundSettingsRow(),
          SizedBox(height: 16),
          ClearGameHistoryRow(),
          SizedBox(height: 16),
          ViewDbRow(),
        ],
      ),
    );
  }
}
