import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

@Injectable()
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc({
    required bool isSystemDarkThemeEnabled,
  }) : super(ThemeState.ready(isDarkThemeEnabled: isSystemDarkThemeEnabled)) {
    on<ThemeEvent>((event, emit) {});
  }
}
