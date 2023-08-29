import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  const factory Game ({
    required int nextPlayingCommandId,
  }) = _Game;
}
