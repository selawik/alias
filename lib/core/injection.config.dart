// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alias/core/database/database.dart' as _i10;
import 'package:alias/core/database/db_provider.dart' as _i11;
import 'package:alias/core/router/app_router.dart' as _i3;
import 'package:alias/feature/categories/data/data_source/category_local_data_source.dart'
    as _i24;
import 'package:alias/feature/categories/data/data_source/category_remote_data_source.dart'
    as _i5;
import 'package:alias/feature/categories/data/data_source/drift_category_data_source.dart'
    as _i25;
import 'package:alias/feature/categories/data/data_source/firebase_category_data_source.dart'
    as _i6;
import 'package:alias/feature/categories/data/mapper/category_mapper.dart'
    as _i4;
import 'package:alias/feature/categories/data/repository/category_repository_impl.dart'
    as _i27;
import 'package:alias/feature/categories/domain/repository/category_repository.dart'
    as _i26;
import 'package:alias/feature/categories/domain/usercases/load_categories.dart'
    as _i36;
import 'package:alias/feature/categories/presentation/bloc/categories_bloc.dart'
    as _i45;
import 'package:alias/feature/commands/data/data_source/commands_data_source.dart'
    as _i8;
import 'package:alias/feature/commands/data/data_source/commands_local_data_source.dart'
    as _i28;
import 'package:alias/feature/commands/data/data_source/drift_commands_local_data_source.dart'
    as _i29;
import 'package:alias/feature/commands/data/data_source/firebase_commands_data_source.dart'
    as _i9;
import 'package:alias/feature/commands/data/mapper/command_mapper.dart' as _i7;
import 'package:alias/feature/commands/data/repository/commands_repository_impl.dart'
    as _i31;
import 'package:alias/feature/commands/domain/repository/commands_repository.dart'
    as _i30;
import 'package:alias/feature/commands/domain/usercases/load_commands.dart'
    as _i37;
import 'package:alias/feature/commands/presentation/bloc/commands_bloc.dart'
    as _i46;
import 'package:alias/feature/game/data/data_source/drift_local_data_source.dart'
    as _i18;
import 'package:alias/feature/game/data/data_source/firebase_words_data_source.dart'
    as _i21;
import 'package:alias/feature/game/data/data_source/words_local_data_source.dart'
    as _i17;
import 'package:alias/feature/game/data/data_source/words_remote_data_source.dart'
    as _i20;
import 'package:alias/feature/game/data/mapper/words_mapper.dart' as _i19;
import 'package:alias/feature/game/data/repository/words_repository_impl.dart'
    as _i23;
import 'package:alias/feature/game/domain/repository/words_repository.dart'
    as _i22;
import 'package:alias/feature/game/domain/usecases/get_played_words.dart'
    as _i34;
import 'package:alias/feature/game/domain/usecases/get_unfinished_game.dart'
    as _i35;
import 'package:alias/feature/game/domain/usecases/load_words.dart' as _i38;
import 'package:alias/feature/game/domain/usecases/reset_game_history.dart'
    as _i39;
import 'package:alias/feature/game/domain/usecases/reset_unfinished_game.dart'
    as _i40;
import 'package:alias/feature/game/domain/usecases/save_played_words.dart'
    as _i41;
import 'package:alias/feature/game/domain/usecases/save_started_game.dart'
    as _i42;
import 'package:alias/feature/game/domain/words_usecases_facade.dart' as _i44;
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart' as _i48;
import 'package:alias/feature/game_settings/presentation/bloc/game_settings_bloc.dart'
    as _i16;
import 'package:alias/feature/sync/data/data_source/dictionary_local_data_source.dart'
    as _i12;
import 'package:alias/feature/sync/data/data_source/dictionary_remote_data_source.dart'
    as _i14;
import 'package:alias/feature/sync/data/data_source/drift_dictionary_data_source.dart'
    as _i13;
import 'package:alias/feature/sync/data/data_source/firebase_dictionary_data_source.dart'
    as _i15;
import 'package:alias/feature/sync/data/repository/dictionary_repository_impl.dart'
    as _i33;
import 'package:alias/feature/sync/domain/repository/dictionary_repository.dart'
    as _i32;
import 'package:alias/feature/sync/domain/usecases/sync_dictionary.dart'
    as _i43;
import 'package:alias/feature/sync/presentation/bloc/dictionary_bloc.dart'
    as _i47;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
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
    gh.factory<_i4.CategoryMapper>(() => _i4.CategoryMapper());
    gh.factory<_i5.CategoryRemoteDataSource>(
        () => _i6.FirebaseCategoryDataSource());
    gh.factory<_i7.CommandMapper>(() => _i7.CommandMapper());
    gh.factory<_i8.CommandsRemoteDataSource>(
        () => _i9.FirebaseCommandsDataSource());
    gh.singleton<_i10.Database>(_i10.Database());
    gh.singleton<_i11.DbProvider>(_i11.DbProvider(db: gh<_i10.Database>()));
    gh.factory<_i12.DictionaryLocalDataSource>(
        () => _i13.DriftDictionaryDataSource(gh<_i11.DbProvider>()));
    gh.factory<_i14.DictionaryRemoteDataSource>(
        () => _i15.FirebaseDictionaryDataSource());
    gh.factory<_i16.GameSettingsBloc>(() => _i16.GameSettingsBloc());
    gh.factory<_i17.WordsLocalDataSource>(
        () => _i18.DriftLocalDataSource(dbProvider: gh<_i11.DbProvider>()));
    gh.factory<_i19.WordsMapper>(() => _i19.WordsMapper());
    gh.factory<_i20.WordsRemoteDataSource>(
        () => _i21.FirebaseWordsDataSource());
    gh.factory<_i22.WordsRepository>(() => _i23.WordsRepositoryImpl(
          remoteDataSource: gh<_i20.WordsRemoteDataSource>(),
          localDataSource: gh<_i17.WordsLocalDataSource>(),
          mapper: gh<_i19.WordsMapper>(),
        ));
    gh.factory<_i24.CategoryLocalDataSource>(
        () => _i25.DriftCategoryDataSource(dbProvider: gh<_i11.DbProvider>()));
    gh.factory<_i26.CategoryRepository>(() => _i27.CategoryRepositoryImpl(
          remoteDataSource: gh<_i5.CategoryRemoteDataSource>(),
          localDataSource: gh<_i24.CategoryLocalDataSource>(),
          mapper: gh<_i4.CategoryMapper>(),
        ));
    gh.factory<_i28.CommandsLocalDataSource>(() =>
        _i29.DriftCommandsLocalDataSource(dbProvider: gh<_i11.DbProvider>()));
    gh.factory<_i30.CommandsRepository>(() => _i31.CommandsRepositoryImpl(
          remoteDataSource: gh<_i8.CommandsRemoteDataSource>(),
          localDataSource: gh<_i28.CommandsLocalDataSource>(),
          commandMapper: gh<_i7.CommandMapper>(),
        ));
    gh.factory<_i32.DictionaryRepository>(() => _i33.DictionaryRepositoryImpl(
          gh<_i14.DictionaryRemoteDataSource>(),
          gh<_i12.DictionaryLocalDataSource>(),
          gh<_i4.CategoryMapper>(),
          gh<_i19.WordsMapper>(),
          gh<_i7.CommandMapper>(),
        ));
    gh.factory<_i34.GetPlayedWords>(
        () => _i34.GetPlayedWords(repository: gh<_i22.WordsRepository>()));
    gh.factory<_i35.GetUnfinishedGame>(
        () => _i35.GetUnfinishedGame(repository: gh<_i22.WordsRepository>()));
    gh.factory<_i36.LoadCategories>(
        () => _i36.LoadCategories(repository: gh<_i26.CategoryRepository>()));
    gh.factory<_i37.LoadCommands>(
        () => _i37.LoadCommands(repository: gh<_i30.CommandsRepository>()));
    gh.factory<_i38.LoadWords>(
        () => _i38.LoadWords(repository: gh<_i22.WordsRepository>()));
    gh.factory<_i39.ResetGameHistory>(
        () => _i39.ResetGameHistory(repository: gh<_i22.WordsRepository>()));
    gh.factory<_i40.ResetUnfinishedGame>(
        () => _i40.ResetUnfinishedGame(repository: gh<_i22.WordsRepository>()));
    gh.factory<_i41.SavePlayedWords>(
        () => _i41.SavePlayedWords(repository: gh<_i22.WordsRepository>()));
    gh.factory<_i42.SaveStartedGame>(
        () => _i42.SaveStartedGame(repository: gh<_i22.WordsRepository>()));
    gh.factory<_i43.SyncDictionary>(
        () => _i43.SyncDictionary(repository: gh<_i32.DictionaryRepository>()));
    gh.factory<_i44.WordsUseCasesFacade>(() => _i44.WordsUseCasesFacade(
          loadWords: gh<_i38.LoadWords>(),
          savePlayedWords: gh<_i41.SavePlayedWords>(),
          getPlayedWords: gh<_i34.GetPlayedWords>(),
          resetGameHistory: gh<_i39.ResetGameHistory>(),
          getUnfinishedGame: gh<_i35.GetUnfinishedGame>(),
          saveStartedGame: gh<_i42.SaveStartedGame>(),
          resetUnfinishedGame: gh<_i40.ResetUnfinishedGame>(),
        ));
    gh.factory<_i45.CategoriesBloc>(
        () => _i45.CategoriesBloc(loadCategories: gh<_i36.LoadCategories>()));
    gh.factory<_i46.CommandsBloc>(
        () => _i46.CommandsBloc(loadCommandsUseCase: gh<_i37.LoadCommands>()));
    gh.factory<_i47.DictionaryBloc>(
        () => _i47.DictionaryBloc(gh<_i43.SyncDictionary>()));
    gh.factory<_i48.GameBloc>(() =>
        _i48.GameBloc(wordsUseCasesFacade: gh<_i44.WordsUseCasesFacade>()));
    return this;
  }
}
