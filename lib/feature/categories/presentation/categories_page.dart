import 'package:alias/core/injection.dart' as di;
import 'package:alias/core/widget/custom_app_bar.dart';
import 'package:alias/feature/categories/presentation/bloc/categories_bloc.dart';
import 'package:alias/feature/categories/presentation/view/categories_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Категории'),
      body: BlocProvider(
        create: (context) =>
            di.locator.get<CategoriesBloc>()..add(LoadCategoriesEvent()),
        child: const CategoriesView(),
      ),
    );
  }
}
