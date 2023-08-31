part of 'categories_bloc.dart';

sealed class CategoriesState {}

class CategoriesInitial extends CategoriesState {}

class CategoriesIsLoading extends CategoriesState {}

class CategoriesLoaded extends CategoriesState {
  final List<Category> categories;

  CategoriesLoaded({required this.categories});
}

extension CagetoryStateExtension on CategoriesState {
  T map<T>({
    required T Function(CategoriesInitial) initial,
    required T Function(CategoriesLoaded) loaded,
    required T Function(CategoriesIsLoading) isLoading,
  }) =>
      switch (this) {
        final CategoriesInitial state => initial(state),
        final CategoriesLoaded state => loaded(state),
        final CategoriesIsLoading state => isLoading(state),
      };

  T maybeMap<T>({
    required T Function() orElse,
    required T Function(CategoriesInitial)? initial,
    required T Function(CategoriesLoaded)? loaded,
    required T Function(CategoriesIsLoading)? isLoading,
  }) =>
      map(
        initial: initial ?? (_) => orElse(),
        loaded: loaded ?? (_) => orElse(),
        isLoading: isLoading ?? (_) => orElse(),
      );

  T? mapOrNull<T>({
    required T Function(CategoriesInitial)? initial,
    required T Function(CategoriesLoaded)? loaded,
    required T Function(CategoriesIsLoading)? isLoading,
  }) =>
      map<T?>(
        initial: initial ?? (_) => null,
        loaded: loaded ?? (_) => null,
        isLoading: isLoading ?? (_) => null,
      );
}
