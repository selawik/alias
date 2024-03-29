import 'package:freezed_annotation/freezed_annotation.dart';

part 'playing_command.freezed.dart';

@freezed
class PlayingCommand with _$PlayingCommand {
  const factory PlayingCommand({
    required int commandId,
    required String name,
    @Default(0) int score,
    @Default(0) int playedRoundCount,
  }) = _PlayingCommand;
}
