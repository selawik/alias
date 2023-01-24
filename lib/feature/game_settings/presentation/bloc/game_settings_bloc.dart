import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'game_settings_event.dart';
part 'game_settings_state.dart';

@Injectable()
class GameSettingsBloc extends Bloc<GameSettingsEvent, GameSettingsState> {
  GameSettingsBloc() : super(GameSettingsInitial()) {
    on<GameSettingsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
