// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alias/core/database/database.dart' as _i15;
import 'package:alias/core/router/app_router.dart' as _i3;
import 'package:alias/feature/categories/data/data_source/category_data_source.dart'
    as _i4;
import 'package:alias/feature/categories/data/data_source/firebase_category_data_source.dart'
    as _i5;
import 'package:alias/feature/categories/data/repository/firebase_category_repository_impl.dart'
    as _i7;
import 'package:alias/feature/categories/domain/repository/category_repository.dart'
    as _i6;
import 'package:alias/feature/categories/domain/usercases/load_categories.dart'
    as _i13;
import 'package:alias/feature/categories/presentation/bloc/categories_bloc.dart'
    as _i20;
import 'package:alias/feature/commands/data/data_source/commands_data_source.dart'
    as _i8;
import 'package:alias/feature/commands/data/data_source/firebase_commands_data_source.dart'
    as _i9;
import 'package:alias/feature/commands/data/repository/commands_repository_impl.dart'
    as _i11;
import 'package:alias/feature/commands/domain/repository/commands_repository.dart'
    as _i10;
import 'package:alias/feature/commands/domain/usercases/load_commands.dart'
    as _i14;
import 'package:alias/feature/commands/presentation/bloc/commands_bloc.dart'
    as _i21;
import 'package:alias/feature/game/data/data_sourse/firebase_words_data_source.dart'
    as _i17;
import 'package:alias/feature/game/data/data_sourse/words_data_sourse.dart'
    as _i16;
import 'package:alias/feature/game/data/repository/words_repository_impl.dart'
    as _i19;
import 'package:alias/feature/game/domain/repository/words_repository.dart'
    as _i18;
import 'package:alias/feature/game/domain/usecases/load_words.dart' as _i22;
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart' as _i23;
import 'package:alias/feature/game_settings/presentation/bloc/game_settings_bloc.dart'
    as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.factory<_i4.CategoryDataSource>(() => _i5.FirebaseCategoryDataSource());
    gh.factory<_i6.CategoryRepository>(() => _i7.FirebaseCategoryRepositoryImpl(
        dataSource: gh<_i4.CategoryDataSource>()));
    gh.factory<_i8.CommandsDataSource>(() => _i9.FirebaseCommandsDataSource());
    gh.factory<_i10.CommandsRepository>(() =>
        _i11.CommandsRepositoryImpl(dataSource: gh<_i8.CommandsDataSource>()));
    gh.factory<_i12.GameSettingsBloc>(() => _i12.GameSettingsBloc());
    gh.factory<_i13.LoadCategories>(
        () => _i13.LoadCategories(repository: gh<_i6.CategoryRepository>()));
    gh.factory<_i14.LoadCommands>(
        () => _i14.LoadCommands(repository: gh<_i10.CommandsRepository>()));
    gh.singleton<_i15.MyDatabase>(_i15.MyDatabase());
    gh.factory<_i16.WordsDataSource>(() => _i17.FirebaseWordsDataSource());
    gh.factory<_i18.WordsRepository>(
        () => _i19.WordsRepositoryImpl(dataSource: gh<_i16.WordsDataSource>()));
    gh.factory<_i20.CategoriesBloc>(
        () => _i20.CategoriesBloc(loadCategories: gh<_i13.LoadCategories>()));
    gh.factory<_i21.CommandsBloc>(
        () => _i21.CommandsBloc(loadCommandsUseCase: gh<_i14.LoadCommands>()));
    gh.factory<_i22.LoadWords>(
        () => _i22.LoadWords(repository: gh<_i18.WordsRepository>()));
    gh.factory<_i23.GameBloc>(
        () => _i23.GameBloc(loadWords: gh<_i22.LoadWords>()));
    return this;
  }
}
