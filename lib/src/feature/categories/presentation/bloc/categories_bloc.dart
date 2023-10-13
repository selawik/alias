import 'package:alias/src/feature/categories/domain/models/category.dart';
import 'package:alias/src/feature/categories/domain/repository/category_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'categories_event.dart';
part 'categories_state.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final ICategoryRepository _repository;

  CategoriesBloc({
    required ICategoryRepository repository,
  })  : _repository = repository,
        super(CategoriesIsLoading()) {
    on<LoadCategoriesEvent>(_onLoadCategories);
  }

  Future<void> _onLoadCategories(
    LoadCategoriesEvent event,
    Emitter<CategoriesState> emit,
  ) async {
    try {
      emit(CategoriesIsLoading());
      final categories = await _repository.loadCategories();
      emit(CategoriesLoaded(categories: categories));
    } on Object catch (e) {
      emit(CategoriesError(message: 'Произошла непредвиденная ошибка'));

      rethrow;
    }
  }
}
