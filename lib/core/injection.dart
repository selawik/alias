import 'package:alias/core/router/app_router.dart';
import 'package:alias/feature/categories/data/data_source/category_data_source.dart';
import 'package:alias/feature/categories/data/data_source/mock_category_data_source.dart';
import 'package:alias/feature/categories/data/repository/category_repository_impl.dart';
import 'package:alias/feature/categories/domain/repository/category_repository.dart';
import 'package:alias/feature/categories/domain/usercases/load_categories.dart';
import 'package:alias/feature/categories/presentation/bloc/categories_bloc.dart';
import 'package:get_it/get_it.dart';

var locator = GetIt.instance;

void initLocator() {
  _initDataSources();
  _initRepository();
  _initUseCases();
  _initBlocs();

  /// Router
  locator.registerSingleton<AppRouter>(AppRouter());
}

void _initBlocs() {
  locator.registerFactory<CategoriesBloc>(
      () => CategoriesBloc(loadCategories: locator.get<LoadCategories>()));
}

void _initRepository() {
  locator.registerSingleton<CategoryRepository>(
      CategoryRepositoryImpl(dataSource: locator.get<CategoryDataSource>()));
}

void _initUseCases() {
  locator.registerFactory<LoadCategories>(
      () => LoadCategories(repository: locator.get<CategoryRepository>()));
}

void _initDataSources() {
  locator.registerSingleton<CategoryDataSource>(MockCategoryDataSource());
}
