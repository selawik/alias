import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/theme/theme_builder.dart';
import 'package:flutter/material.dart';

enum WordsToWin {
  twentyFive,
  forty,
  eighty,
  hundred;

  int get value {
    switch (this) {
      case WordsToWin.twentyFive:
        return 25;
      case WordsToWin.forty:
        return 40;
      case WordsToWin.eighty:
        return 80;
      case WordsToWin.hundred:
        return 100;
    }
  }
}

class WordsToWinCountSelector extends StatefulWidget {
  const WordsToWinCountSelector({Key? key}) : super(key: key);

  @override
  State<WordsToWinCountSelector> createState() =>
      _WordsToWinCountSelectorState();
}

class _WordsToWinCountSelectorState extends State<WordsToWinCountSelector> {
  WordsToWin value = WordsToWin.forty;

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
        Container(
          decoration: BoxDecoration(
              boxShadow: ThemeBuilder.defaultShadow,
              color: AppColors.white,
              borderRadius: ThemeBuilder.defaultBorderRadius),
          child: Row(
            children: WordsToWin.values
                .map(
                  (wordsToWin) => Expanded(
                    flex: 100 ~/ WordsToWin.values.length,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          value = wordsToWin;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                          color: wordsToWin == value
                              ? AppColors.buttonColor
                              : AppColors.white,
                          borderRadius: _getBorderRadius(wordsToWin),
                        ),
                        child: Center(
                          child: Text(
                            wordsToWin.value.toString(),
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: wordsToWin == value
                                          ? AppColors.white
                                          : AppColors.black,
                                    ),
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
}
