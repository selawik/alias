import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc({
    @factoryParam required bool isSystemDarkThemeEnabled,
  }) : super(ThemeState.ready(isDarkThemeEnabled: isSystemDarkThemeEnabled)) {
    on<_ThemeSwitched>(_onThemeSwitched);
  }

  void _onThemeSwitched(_ThemeSwitched event, Emitter<ThemeState> emit) {
    final currentState = state as _Ready;

    //TODO (@selawik) add caching
    emit(
      currentState.copyWith(
        isDarkThemeEnabled: !currentState.isDarkThemeEnabled,
      ),
    );
  }
}
