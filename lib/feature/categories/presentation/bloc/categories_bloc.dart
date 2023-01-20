import 'package:alias/feature/categories/data/models/category.dart';
import 'package:alias/feature/categories/domain/usercases/load_categories.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final LoadCategories loadCategories;

  CategoriesBloc({
    required this.loadCategories,
  }) : super(CategoriesInitial()) {
    on<LoadCategoriesEvent>(_onLoadCategories);
  }

  void _onLoadCategories(LoadCategoriesEvent event, Emitter emit) async {
    emit(CategoriesIsLoading());

    final result = await loadCategories.execute();

    result.fold(
      (failure) => null,
      (data) => emit(
        CategoriesLoaded(categories: data),
      ),
    );
  }
}
