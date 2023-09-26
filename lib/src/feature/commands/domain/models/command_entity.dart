import 'package:freezed_annotation/freezed_annotation.dart';

part 'command_entity.freezed.dart';

@freezed
class CommandEntity with _$CommandEntity {
  const factory CommandEntity({
    required int commandId,
    required String name,
  }) = _CommandEntity;
}
