part of 'categories_bloc.dart';

sealed class CategoriesState {}

class CategoriesIsLoading extends CategoriesState {}

class CategoriesLoaded extends CategoriesState {
  final List<CategoryEntity> categories;

  CategoriesLoaded({required this.categories});
}

class CategoriesError extends CategoriesState {
  final String message;

  CategoriesError({required this.message});
}

extension CagetoryStateExtension on CategoriesState {
  T map<T>({
    required T Function(CategoriesLoaded) loaded,
    required T Function(CategoriesIsLoading) isLoading,
    required T Function(CategoriesError) error,
  }) =>
      switch (this) {
        final CategoriesLoaded state => loaded(state),
        final CategoriesIsLoading state => isLoading(state),
        final CategoriesError state => error(state),
      };

  T maybeMap<T>({
    required T Function() orElse,
    required T Function(CategoriesLoaded)? loaded,
    required T Function(CategoriesIsLoading)? isLoading,
    required T Function(CategoriesError)? error,
  }) =>
      map(
          loaded: loaded ?? (_) => orElse(),
          isLoading: isLoading ?? (_) => orElse(),
          error: error ?? (_) => orElse());

  T? mapOrNull<T>({
    required T Function(CategoriesLoaded)? loaded,
    required T Function(CategoriesIsLoading)? isLoading,
    required T Function(CategoriesError)? error,
  }) =>
      map<T?>(
        loaded: loaded ?? (_) => null,
        isLoading: isLoading ?? (_) => null,
        error: error ?? (_) => null,
      );
}
