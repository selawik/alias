import 'package:alias/src/feature/game_settings/domain/model/binary_selector_type.dart';
import 'package:alias/src/feature/game_settings/domain/model/command_move_selector_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_dto.freezed.dart';

@freezed
class GameDto with _$GameDto {
  const factory GameDto({
    required int nextPlayingCommandId,
    required BinarySelectorMode lastWordMode,
    required BinarySelectorMode penaltyMode,
    required CommandMoveMode moveTime,
    required int categoryId,
  }) = _GameDto;
}
