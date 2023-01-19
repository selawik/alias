import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/categories/presentation/bloc/categories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (BuildContext context, state) {
        if (state is CategoriesIsLoading) {
          return _buildProgressIndicator(context);
        }

        if (state is CategoriesLoaded) {
          return _buildCategoriesList(context, state.categories);
        }

        return Container();
      },
    );
  }

  Widget _buildProgressIndicator(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildCategoriesList(BuildContext context, List<Category> categories) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            for (var item in categories) _buildListItem(context, item),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, Category category) {
    return ElevatedButton(
      onPressed: () => _onListItemTap(context, category),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
      ),
      child: Text(
        category.name,
      ),
    );
  }

  void _onListItemTap(BuildContext context, Category category) {}
}
