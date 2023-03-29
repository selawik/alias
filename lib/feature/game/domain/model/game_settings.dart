import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:alias/feature/game_settings/domain/model/command_move_selector_type.dart';
import 'package:alias/feature/game_settings/domain/model/words_to_win.dart';
import 'package:alias/feature/game_settings/presentation/view/widget/words_to_win_count_selector.dart';

class GameSettings {
  final CommandMoveMode moveTime;
  final BinarySelectorMode lastWordMode;
  final BinarySelectorMode penaltyMode;
  final WordsToWin wordsToWin;

  GameSettings({
    required this.lastWordMode,
    required this.moveTime,
    required this.penaltyMode,
    required this.wordsToWin,
  });
}
