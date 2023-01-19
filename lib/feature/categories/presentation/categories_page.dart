import 'package:alias/core/injection.dart' as di;
import 'package:alias/feature/categories/presentation/bloc/categories_bloc.dart';
import 'package:alias/feature/categories/presentation/view/categories_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => di.locator.get<CategoriesBloc>(),
        child: const CategoriesView(),
      ),
    );
  }
}
