part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.ready({
    required bool isDarkThemeEnabled,
  }) = _Ready;
}
