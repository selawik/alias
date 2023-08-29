import 'package:freezed_annotation/freezed_annotation.dart';

part 'command_dto.freezed.dart';
part 'command_dto.g.dart';

@freezed
class CommandDto with _$CommandDto {
  const factory CommandDto({
    required int commandId,
    required String name,
  }) = _CommandDto;

  factory CommandDto.fromJson(Map<String, dynamic> json) =>
      _$CommandDtoFromJson(json);
}
