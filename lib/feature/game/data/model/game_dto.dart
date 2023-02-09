import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_dto.freezed.dart';

@freezed
class GameDto with _$GameDto {
  const factory GameDto ({
    required int nextPlayingCommandId,
  }) = _GameDto;
}
