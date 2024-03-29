import 'package:alias/src/core/constants/app_colors.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:alias/src/feature/game_settings/domain/entity/words_to_win.dart';
import 'package:alias/src/feature/game_settings/presentation/bloc/game_settings_bloc.dart';
import 'package:alias/src/feature/theming/presentation/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WordsToWinCountSelector extends StatelessWidget {
  final WordsToWin selectedItem;

  const WordsToWinCountSelector({
    required this.selectedItem,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Счет для победы',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 16),
        DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: ThemeBuilder.defaultShadow,
            color: AppColors.white,
            borderRadius: ThemeBuilder.defaultBorderRadius,
          ),
          child: Row(
            children: WordsToWin.values
                .map(
                  (wordsToWin) => Expanded(
                    flex: 100 ~/ WordsToWin.values.length,
                    child: GestureDetector(
                      onTap: () => _onSelectItem(context, wordsToWin),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        decoration: _getBoxDecoration(context, wordsToWin),
                        child: Center(
                          child: Text(
                            wordsToWin.value.toString(),
                            style: _getTextStyle(context, wordsToWin),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }

  BorderRadiusGeometry? _getBorderRadius(WordsToWin wordsToWin) {
    if (wordsToWin == WordsToWin.values.first) {
      return ThemeBuilder.defaultBorderRadius
          .copyWith(topRight: Radius.zero, bottomRight: Radius.zero);
    }

    if (wordsToWin == WordsToWin.values.last) {
      return ThemeBuilder.defaultBorderRadius
          .copyWith(topLeft: Radius.zero, bottomLeft: Radius.zero);
    }

    return null;
  }

  TextStyle? _getTextStyle(BuildContext context, WordsToWin wordsToWin) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: selectedItem == wordsToWin ? AppColors.white : null,
        );
  }

  BoxDecoration _getBoxDecoration(BuildContext context, WordsToWin wordsToWin) {
    final themeBloc = context.read<ThemeBloc>();
    return BoxDecoration(
      color: selectedItem == wordsToWin
          ? AppColors.buttonColor
          : themeBloc.state.isDarkThemeEnabled
              ? AppColors.black
              : AppColors.white,
      borderRadius: _getBorderRadius(wordsToWin),
    );
  }

  void _onSelectItem(BuildContext context, WordsToWin value) {
    BlocProvider.of<GameSettingsBloc>(context).add(
      GameSettingsEvent.wordsToWinChanged(wordsToWin: value),
    );
  }
}
