import 'package:alias/src/core/constants/app_colors.dart';
import 'package:alias/src/core/constants/assets_catalog.dart';
import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:alias/src/feature/categories/domain/entity/category.dart';
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:alias/src/feature/theming/presentation/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryListItem extends StatelessWidget {
  final CategoryEntity category;

  const CategoryListItem({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeBloc = context.read<ThemeBloc>();

    return Stack(
      fit: StackFit.expand,
      children: [
        GestureDetector(
          onTap: () => _onListItemTap(context, category),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: ThemeBuilder.cardDecoration(
              isDarkThemeEnabled: themeBloc.state.isDarkThemeEnabled,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.network(
                    category.fileUrl,
                    gaplessPlayback: true,
                    errorBuilder: (context, value, stacktrace) {
                      return Image.asset(AssetsCatalog.placeholder);
                    },
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  category.name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 8,
          top: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration:
                ThemeBuilder.cardDecoration(isDarkThemeEnabled: false).copyWith(
              color: AppColors.buttonColor,
            ),
            child: Text(
              category.wordsCount.toString(),
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.white),
            ),
          ),
        )
      ],
    );
  }

  void _onListItemTap(BuildContext context, CategoryEntity category) {
    final router = di.locator.get<AppRouter>();

    BlocProvider.of<GameBloc>(context).add(
      GameEvent.initializeCategory(category: category),
    );

    router.push(const CommandPageRoute());
  }
}
