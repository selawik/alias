import 'package:alias/src/feature/categories/domain/models/category.dart';
import 'package:alias/src/feature/categories/domain/usercases/load_categories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'categories_event.dart';
part 'categories_state.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final LoadCategories _loadCategories;

  CategoriesBloc({
    required LoadCategories loadCategories,
  })  : _loadCategories = loadCategories,
        super(CategoriesInitial()) {
    on<LoadCategoriesEvent>(_onLoadCategories);
  }

  Future<void> _onLoadCategories(
    LoadCategoriesEvent event,
    Emitter<CategoriesState> emit,
  ) async {
    emit(CategoriesIsLoading());

    final result = await _loadCategories.execute();

    result.fold(
      (failure) => null,
      (data) => emit(
        CategoriesLoaded(categories: data),
      ),
    );
  }
}
