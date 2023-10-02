part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();

  @override
  bool get isDarkThemeEnabled =>
      mapOrNull(ready: (state) => state.isDarkThemeEnabled) ?? false;

  const factory ThemeState.ready({
    required bool isDarkThemeEnabled,
  }) = _Ready;
}
