import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/commands/data/models/command.dart';
import 'package:alias/feature/game/domain/game_settings.dart';
import 'package:alias/feature/game_settings/data/models/word.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'alias_bloc.freezed.dart';

part 'alias_event.dart';

part 'alias_state.dart';

@Injectable()
class AliasBloc extends Bloc<AliasEvent, AliasState> {
  AliasBloc() : super(const AliasState.initial()) {
    on<_Started>((_onGameStarted));
    on<_CategorySelected>(_onCategorySelected);
    on<_CommandsFormed>(_onCommandsFormed);
    on<_GameSettingsSelected>(_onGameSettingsSelected);
  }

  void _onGameStarted(_Started event, Emitter emit) {}

  void _onCategorySelected(_CategorySelected event, Emitter emit) {}

  void _onCommandsFormed(_CommandsFormed event, Emitter emit) {}

  void _onGameSettingsSelected(_GameSettingsSelected event, Emitter emit) {
    emit(AliasState.gameIsReady(gameSettings: event.gameSettings, words: []));
  }
}
