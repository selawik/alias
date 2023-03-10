// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alias/core/database/database.dart' as _i13;
import 'package:alias/core/database/db_provider.dart' as _i14;
import 'package:alias/core/router/app_router.dart' as _i3;
import 'package:alias/feature/categories/data/data_source/category_data_source.dart'
    as _i4;
import 'package:alias/feature/categories/data/data_source/firebase_category_data_source.dart'
    as _i5;
import 'package:alias/feature/categories/data/mapper/category_mapper.dart'
    as _i6;
import 'package:alias/feature/categories/data/repository/category_repository_impl.dart'
    as _i8;
import 'package:alias/feature/categories/domain/repository/category_repository.dart'
    as _i7;
import 'package:alias/feature/categories/domain/usercases/load_categories.dart'
    as _i22;
import 'package:alias/feature/categories/presentation/bloc/categories_bloc.dart'
    as _i32;
import 'package:alias/feature/commands/data/data_source/commands_data_source.dart'
    as _i9;
import 'package:alias/feature/commands/data/data_source/firebase_commands_data_source.dart'
    as _i10;
import 'package:alias/feature/commands/data/repository/commands_repository_impl.dart'
    as _i12;
import 'package:alias/feature/commands/domain/repository/commands_repository.dart'
    as _i11;
import 'package:alias/feature/commands/domain/usercases/load_commands.dart'
    as _i23;
import 'package:alias/feature/commands/presentation/bloc/commands_bloc.dart'
    as _i33;
import 'package:alias/feature/game/data/data_source/drift_local_data_source.dart'
    as _i26;
import 'package:alias/feature/game/data/data_source/firebase_words_data_source.dart'
    as _i29;
import 'package:alias/feature/game/data/data_source/words_local_data_source.dart'
    as _i25;
import 'package:alias/feature/game/data/data_source/words_remote_data_source.dart'
    as _i28;
import 'package:alias/feature/game/data/mapper/words_mapper.dart' as _i27;
import 'package:alias/feature/game/data/repository/words_repository_impl.dart'
    as _i31;
import 'package:alias/feature/game/domain/repository/words_repository.dart'
    as _i30;
import 'package:alias/feature/game/domain/usecases/get_played_words.dart'
    as _i35;
import 'package:alias/feature/game/domain/usecases/get_unfinished_game.dart'
    as _i36;
import 'package:alias/feature/game/domain/usecases/load_words.dart' as _i37;
import 'package:alias/feature/game/domain/usecases/reset_game_history.dart'
    as _i38;
import 'package:alias/feature/game/domain/usecases/reset_unfinished_game.dart'
    as _i39;
import 'package:alias/feature/game/domain/usecases/save_played_words.dart'
    as _i40;
import 'package:alias/feature/game/domain/usecases/save_started_game.dart'
    as _i41;
import 'package:alias/feature/game/domain/words_usecases_facade.dart' as _i42;
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart' as _i43;
import 'package:alias/feature/game_settings/presentation/bloc/game_settings_bloc.dart'
    as _i21;
import 'package:alias/feature/sync/data/data_source/dictionary_local_data_source.dart'
    as _i15;
import 'package:alias/feature/sync/data/data_source/dictionary_remote_data_source.dart'
    as _i17;
import 'package:alias/feature/sync/data/data_source/drift_dictionary_data_source.dart'
    as _i16;
import 'package:alias/feature/sync/data/data_source/firebase_dictionary_data_source.dart'
    as _i18;
import 'package:alias/feature/sync/data/repository/dictionary_repository_impl.dart'
    as _i20;
import 'package:alias/feature/sync/domain/repository/dictionary_repository.dart'
    as _i19;
import 'package:alias/feature/sync/domain/usecases/sync_dictionary.dart'
    as _i24;
import 'package:alias/feature/sync/presentation/bloc/dictionary_bloc.dart'
    as _i34;
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
    gh.factory<_i6.CategoryMapper>(() => _i6.CategoryMapper());
    gh.factory<_i7.CategoryRepository>(() => _i8.CategoryRepositoryImpl(
          dataSource: gh<_i4.CategoryDataSource>(),
          mapper: gh<_i6.CategoryMapper>(),
        ));
    gh.factory<_i9.CommandsDataSource>(() => _i10.FirebaseCommandsDataSource());
    gh.factory<_i11.CommandsRepository>(() =>
        _i12.CommandsRepositoryImpl(dataSource: gh<_i9.CommandsDataSource>()));
    gh.singleton<_i13.Database>(_i13.Database());
    gh.singleton<_i14.DbProvider>(_i14.DbProvider(db: gh<_i13.Database>()));
    gh.factory<_i15.DictionaryLocalDataSource>(
        () => _i16.DriftDictionaryDataSource(gh<_i14.DbProvider>()));
    gh.factory<_i17.DictionaryRemoteDataSource>(
        () => _i18.FirebaseDictionaryDataSource());
    gh.factory<_i19.DictionaryRepository>(() => _i20.DictionaryRepositoryImpl(
          gh<_i17.DictionaryRemoteDataSource>(),
          gh<_i15.DictionaryLocalDataSource>(),
          gh<_i6.CategoryMapper>(),
        ));
    gh.factory<_i21.GameSettingsBloc>(() => _i21.GameSettingsBloc());
    gh.factory<_i22.LoadCategories>(
        () => _i22.LoadCategories(repository: gh<_i7.CategoryRepository>()));
    gh.factory<_i23.LoadCommands>(
        () => _i23.LoadCommands(repository: gh<_i11.CommandsRepository>()));
    gh.factory<_i24.SyncDictionary>(
        () => _i24.SyncDictionary(repository: gh<_i19.DictionaryRepository>()));
    gh.factory<_i25.WordsLocalDataSource>(
        () => _i26.DriftLocalDataSource(dbProvider: gh<_i14.DbProvider>()));
    gh.factory<_i27.WordsMapper>(() => _i27.WordsMapper());
    gh.factory<_i28.WordsRemoteDataSource>(
        () => _i29.FirebaseWordsDataSource());
    gh.factory<_i30.WordsRepository>(() => _i31.WordsRepositoryImpl(
          remoteDataSource: gh<_i28.WordsRemoteDataSource>(),
          localDataSource: gh<_i25.WordsLocalDataSource>(),
          mapper: gh<_i27.WordsMapper>(),
        ));
    gh.factory<_i32.CategoriesBloc>(
        () => _i32.CategoriesBloc(loadCategories: gh<_i22.LoadCategories>()));
    gh.factory<_i33.CommandsBloc>(
        () => _i33.CommandsBloc(loadCommandsUseCase: gh<_i23.LoadCommands>()));
    gh.factory<_i34.DictionaryBloc>(
        () => _i34.DictionaryBloc(gh<_i24.SyncDictionary>()));
    gh.factory<_i35.GetPlayedWords>(
        () => _i35.GetPlayedWords(repository: gh<_i30.WordsRepository>()));
    gh.factory<_i36.GetUnfinishedGame>(
        () => _i36.GetUnfinishedGame(repository: gh<_i30.WordsRepository>()));
    gh.factory<_i37.LoadWords>(
        () => _i37.LoadWords(repository: gh<_i30.WordsRepository>()));
    gh.factory<_i38.ResetGameHistory>(
        () => _i38.ResetGameHistory(repository: gh<_i30.WordsRepository>()));
    gh.factory<_i39.ResetUnfinishedGame>(
        () => _i39.ResetUnfinishedGame(repository: gh<_i30.WordsRepository>()));
    gh.factory<_i40.SavePlayedWords>(
        () => _i40.SavePlayedWords(repository: gh<_i30.WordsRepository>()));
    gh.factory<_i41.SaveStartedGame>(
        () => _i41.SaveStartedGame(repository: gh<_i30.WordsRepository>()));
    gh.factory<_i42.WordsUseCasesFacade>(() => _i42.WordsUseCasesFacade(
          loadWords: gh<_i37.LoadWords>(),
          savePlayedWords: gh<_i40.SavePlayedWords>(),
          getPlayedWords: gh<_i35.GetPlayedWords>(),
          resetGameHistory: gh<_i38.ResetGameHistory>(),
          getUnfinishedGame: gh<_i36.GetUnfinishedGame>(),
          saveStartedGame: gh<_i41.SaveStartedGame>(),
          resetUnfinishedGame: gh<_i39.ResetUnfinishedGame>(),
        ));
    gh.factory<_i43.GameBloc>(() =>
        _i43.GameBloc(wordsUseCasesFacade: gh<_i42.WordsUseCasesFacade>()));
    return this;
  }
}
