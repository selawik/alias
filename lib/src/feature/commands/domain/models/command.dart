import 'package:freezed_annotation/freezed_annotation.dart';

part 'command.freezed.dart';

@freezed
class Command with _$Command {
  const factory Command({
    required int commandId,
    required String name,
  }) = _Command;
}
