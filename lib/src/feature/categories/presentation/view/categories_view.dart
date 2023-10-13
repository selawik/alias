import 'package:alias/src/core/widget/custom_progress_indicator.dart';
import 'package:alias/src/feature/categories/presentation/bloc/categories_bloc.dart';
import 'package:alias/src/feature/categories/presentation/view/widget/category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return state.map(
          loaded: (state) => CategoryList(categories: state.categories),
          isLoading: (state) => const Center(child: CustomProgressIndicator()),
          error: (state) => Center(child: Text(state.message)),
        );
      },
    );
  }
}
