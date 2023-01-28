import 'package:alias/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:alias/feature/game_settings/domain/model/command_move_selector_type.dart';

class GameSettings {
  final CommandMoveMode moveTime;
  final BinarySelectorMode lastWordMode;
  final BinarySelectorMode penaltyMode;

  GameSettings({
    required this.lastWordMode,
    required this.moveTime,
    required this.penaltyMode,
  });
}
