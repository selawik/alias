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
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        var item = categories[index];

        return _buildListItem(context, item);
      },
      itemCount: categories.length,
    );
  }

  Widget _buildListItem(BuildContext context, Category category) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.red,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            category.fileName,
            width: 120,
          ),
          const SizedBox(height: 16),
          Text(category.name),
        ],
      ),
    );
    return ElevatedButton(
      onPressed: () => _onListItemTap(context, category),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
      ),
      child: Text('123'),
    );
  }

  void _onListItemTap(BuildContext context, Category category) {}
}
