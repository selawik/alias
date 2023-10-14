import 'package:alias/src/feature/game_settings/domain/entity/binary_selector_type.dart';
import 'package:alias/src/feature/game_settings/domain/entity/command_move_selector_type.dart';
import 'package:alias/src/feature/game_settings/domain/entity/words_to_win.dart';

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
