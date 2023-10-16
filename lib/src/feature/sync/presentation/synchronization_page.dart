import 'package:alias/src/core/constants/app_colors.dart';
import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:alias/src/core/theme/theme_builder.dart';
import 'package:alias/src/core/widget/custom_progress_indicator.dart';
import 'package:alias/src/feature/sync/presentation/bloc/dictionary_bloc.dart';
import 'package:alias/src/feature/theming/presentation/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SynchronizationPage extends StatelessWidget {
  const SynchronizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeBloc = context.read<ThemeBloc>();
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: BlocConsumer<DictionaryBloc, DictionaryState>(
        listener: (context, state) {
          final router = di.locator.get<AppRouter>();

          state.whenOrNull(sync: () => router.replace(const HomePageRoute()));
        },
        builder: (context, state) {
          return state.maybeMap(
            isLoading: (state) => const Center(
              child: CustomProgressIndicator(),
            ),
            syncError: (state) => Center(
              child: DecoratedBox(
                decoration: ThemeBuilder.cardDecoration(
                  isDarkThemeEnabled: themeBloc.state.isDarkThemeEnabled,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        size: 100,
                        color: AppColors.red,
                        Icons.sentiment_very_dissatisfied_rounded,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Не удалось загрузить словарь',
                        style: textTheme.displaySmall,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            orElse: Container.new,
          );
        },
      ),
    );
  }
}
