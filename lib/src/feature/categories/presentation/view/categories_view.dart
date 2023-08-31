import 'package:alias/src/core/constants/app_colors.dart';
import 'package:alias/src/core/constants/assets_catalog.dart';
import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:alias/src/core/widget/custom_progress_indicator.dart';
import 'package:alias/src/feature/categories/domain/models/category.dart';
import 'package:alias/src/feature/categories/presentation/bloc/categories_bloc.dart';
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return state.map(
          initial: (state) => _buildProgressIndicator(context),
          loaded: (state) => _buildCategoriesList(context, state.categories),
          isLoading: (state) => _buildProgressIndicator(context),
        );
      },
    );
  }

  Widget _buildProgressIndicator(BuildContext context) {
    return const Center(
      child: CustomProgressIndicator(),
    );
  }

  Widget _buildCategoriesList(BuildContext context, List<Category> categories) {
    return GridView.builder(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: MediaQuery.of(context).padding.bottom + 16,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.95,
      ),
      itemBuilder: (context, index) {
        final item = categories[index];

        return _buildListItem(context, item);
      },
      itemCount: categories.length,
    );
  }

  Widget _buildListItem(BuildContext context, Category category) {
    return Stack(
      fit: StackFit.expand,
      children: [
        GestureDetector(
          onTap: () => _onListItemTap(context, category),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: ThemeBuilder.cardDecoration,
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
            decoration: ThemeBuilder.cardDecoration
                .copyWith(color: AppColors.buttonColor),
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

  void _onListItemTap(BuildContext context, Category category) {
    final router = di.locator.get<AppRouter>();

    BlocProvider.of<GameBloc>(context).add(
      GameEvent.initializeCategory(category: category),
    );

    router.push(const CommandPageRoute());
  }
}
