// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alias/src/core/database/database.dart' as _i11;
import 'package:alias/src/core/database/db_provider.dart' as _i12;
import 'package:alias/src/core/router/app_router.dart' as _i4;
import 'package:alias/src/feature/categories/data/data_source/category_local_data_source.dart'
    as _i25;
import 'package:alias/src/feature/categories/data/data_source/category_remote_data_source.dart'
    as _i6;
import 'package:alias/src/feature/categories/data/data_source/drift_category_data_source.dart'
    as _i26;
import 'package:alias/src/feature/categories/data/data_source/firebase_category_data_source.dart'
    as _i7;
import 'package:alias/src/feature/categories/data/mapper/category_mapper.dart'
    as _i5;
import 'package:alias/src/feature/categories/data/repository/category_repository_impl.dart'
    as _i28;
import 'package:alias/src/feature/categories/domain/repository/category_repository.dart'
    as _i27;
import 'package:alias/src/feature/categories/domain/usercases/load_categories.dart'
    as _i37;
import 'package:alias/src/feature/categories/presentation/bloc/categories_bloc.dart'
    as _i46;
import 'package:alias/src/feature/commands/data/data_source/commands_data_source.dart'
    as _i9;
import 'package:alias/src/feature/commands/data/data_source/commands_local_data_source.dart'
    as _i29;
import 'package:alias/src/feature/commands/data/data_source/drift_commands_local_data_source.dart'
    as _i30;
import 'package:alias/src/feature/commands/data/data_source/firebase_commands_data_source.dart'
    as _i10;
import 'package:alias/src/feature/commands/data/mapper/command_mapper.dart'
    as _i8;
import 'package:alias/src/feature/commands/data/repository/commands_repository_impl.dart'
    as _i32;
import 'package:alias/src/feature/commands/domain/repository/commands_repository.dart'
    as _i31;
import 'package:alias/src/feature/commands/domain/usercases/load_commands.dart'
    as _i38;
import 'package:alias/src/feature/commands/presentation/bloc/commands_bloc.dart'
    as _i47;
import 'package:alias/src/feature/game/data/data_source/drift_local_data_source.dart'
    as _i19;
import 'package:alias/src/feature/game/data/data_source/firebase_words_data_source.dart'
    as _i22;
import 'package:alias/src/feature/game/data/data_source/words_local_data_source.dart'
    as _i18;
import 'package:alias/src/feature/game/data/data_source/words_remote_data_source.dart'
    as _i21;
import 'package:alias/src/feature/game/data/mapper/words_mapper.dart' as _i20;
import 'package:alias/src/feature/game/data/repository/words_repository_impl.dart'
    as _i24;
import 'package:alias/src/feature/game/domain/repository/words_repository.dart'
    as _i23;
import 'package:alias/src/feature/game/domain/usecases/get_played_words.dart'
    as _i35;
import 'package:alias/src/feature/game/domain/usecases/get_unfinished_game.dart'
    as _i36;
import 'package:alias/src/feature/game/domain/usecases/load_words.dart' as _i39;
import 'package:alias/src/feature/game/domain/usecases/reset_game_history.dart'
    as _i40;
import 'package:alias/src/feature/game/domain/usecases/reset_unfinished_game.dart'
    as _i41;
import 'package:alias/src/feature/game/domain/usecases/save_played_words.dart'
    as _i42;
import 'package:alias/src/feature/game/domain/usecases/save_started_game.dart'
    as _i43;
import 'package:alias/src/feature/game/domain/words_usecases_facade.dart'
    as _i45;
import 'package:alias/src/feature/game/presentation/bloc/answer_bloc/answer_bloc.dart'
    as _i3;
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart'
    as _i49;
import 'package:alias/src/feature/game_settings/presentation/bloc/game_settings_bloc.dart'
    as _i17;
import 'package:alias/src/feature/sync/data/data_source/dictionary_local_data_source.dart'
    as _i13;
import 'package:alias/src/feature/sync/data/data_source/dictionary_remote_data_source.dart'
    as _i15;
import 'package:alias/src/feature/sync/data/data_source/drift_dictionary_data_source.dart'
    as _i14;
import 'package:alias/src/feature/sync/data/data_source/firebase_dictionary_data_source.dart'
    as _i16;
import 'package:alias/src/feature/sync/data/repository/dictionary_repository_impl.dart'
    as _i34;
import 'package:alias/src/feature/sync/domain/repository/dictionary_repository.dart'
    as _i33;
import 'package:alias/src/feature/sync/domain/usecases/sync_dictionary.dart'
    as _i44;
import 'package:alias/src/feature/sync/presentation/bloc/dictionary_bloc.dart'
    as _i48;
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
    gh.factory<_i3.AnswerBloc>(() => _i3.AnswerBloc());
    gh.singleton<_i4.AppRouter>(_i4.AppRouter());
    gh.factory<_i5.CategoryMapper>(() => _i5.CategoryMapper());
    gh.factory<_i6.CategoryRemoteDataSource>(
        () => _i7.FirebaseCategoryDataSource());
    gh.factory<_i8.CommandMapper>(() => _i8.CommandMapper());
    gh.factory<_i9.CommandsRemoteDataSource>(
        () => _i10.FirebaseCommandsDataSource());
    gh.singleton<_i11.Database>(_i11.Database());
    gh.singleton<_i12.DbProvider>(_i12.DbProvider(db: gh<_i11.Database>()));
    gh.factory<_i13.DictionaryLocalDataSource>(
        () => _i14.DriftDictionaryDataSource(gh<_i12.DbProvider>()));
    gh.factory<_i15.DictionaryRemoteDataSource>(
        () => _i16.FirebaseDictionaryDataSource());
    gh.factory<_i17.GameSettingsBloc>(() => _i17.GameSettingsBloc());
    gh.factory<_i18.WordsLocalDataSource>(
        () => _i19.DriftLocalDataSource(dbProvider: gh<_i12.DbProvider>()));
    gh.factory<_i20.WordsMapper>(() => _i20.WordsMapper());
    gh.factory<_i21.WordsRemoteDataSource>(
        () => _i22.FirebaseWordsDataSource());
    gh.factory<_i23.WordsRepository>(() => _i24.WordsRepositoryImpl(
          remoteDataSource: gh<_i21.WordsRemoteDataSource>(),
          localDataSource: gh<_i18.WordsLocalDataSource>(),
          mapper: gh<_i20.WordsMapper>(),
        ));
    gh.factory<_i25.CategoryLocalDataSource>(
        () => _i26.DriftCategoryDataSource(dbProvider: gh<_i12.DbProvider>()));
    gh.factory<_i27.CategoryRepository>(() => _i28.CategoryRepositoryImpl(
          remoteDataSource: gh<_i6.CategoryRemoteDataSource>(),
          localDataSource: gh<_i25.CategoryLocalDataSource>(),
          mapper: gh<_i5.CategoryMapper>(),
        ));
    gh.factory<_i29.CommandsLocalDataSource>(() =>
        _i30.DriftCommandsLocalDataSource(dbProvider: gh<_i12.DbProvider>()));
    gh.factory<_i31.CommandsRepository>(() => _i32.CommandsRepositoryImpl(
          remoteDataSource: gh<_i9.CommandsRemoteDataSource>(),
          localDataSource: gh<_i29.CommandsLocalDataSource>(),
          commandMapper: gh<_i8.CommandMapper>(),
        ));
    gh.factory<_i33.DictionaryRepository>(() => _i34.DictionaryRepositoryImpl(
          gh<_i15.DictionaryRemoteDataSource>(),
          gh<_i13.DictionaryLocalDataSource>(),
          gh<_i5.CategoryMapper>(),
          gh<_i20.WordsMapper>(),
          gh<_i8.CommandMapper>(),
        ));
    gh.factory<_i35.GetPlayedWords>(
        () => _i35.GetPlayedWords(repository: gh<_i23.WordsRepository>()));
    gh.factory<_i36.GetUnfinishedGame>(
        () => _i36.GetUnfinishedGame(repository: gh<_i23.WordsRepository>()));
    gh.factory<_i37.LoadCategories>(
        () => _i37.LoadCategories(repository: gh<_i27.CategoryRepository>()));
    gh.factory<_i38.LoadCommands>(
        () => _i38.LoadCommands(repository: gh<_i31.CommandsRepository>()));
    gh.factory<_i39.LoadWords>(
        () => _i39.LoadWords(repository: gh<_i23.WordsRepository>()));
    gh.factory<_i40.ResetGameHistory>(
        () => _i40.ResetGameHistory(repository: gh<_i23.WordsRepository>()));
    gh.factory<_i41.ResetUnfinishedGame>(
        () => _i41.ResetUnfinishedGame(repository: gh<_i23.WordsRepository>()));
    gh.factory<_i42.SavePlayedWords>(
        () => _i42.SavePlayedWords(repository: gh<_i23.WordsRepository>()));
    gh.factory<_i43.SaveStartedGame>(
        () => _i43.SaveStartedGame(repository: gh<_i23.WordsRepository>()));
    gh.factory<_i44.SyncDictionary>(
        () => _i44.SyncDictionary(repository: gh<_i33.DictionaryRepository>()));
    gh.factory<_i45.WordsUseCasesFacade>(() => _i45.WordsUseCasesFacade(
          loadWords: gh<_i39.LoadWords>(),
          savePlayedWords: gh<_i42.SavePlayedWords>(),
          getPlayedWords: gh<_i35.GetPlayedWords>(),
          resetGameHistory: gh<_i40.ResetGameHistory>(),
          getUnfinishedGame: gh<_i36.GetUnfinishedGame>(),
          saveStartedGame: gh<_i43.SaveStartedGame>(),
          resetUnfinishedGame: gh<_i41.ResetUnfinishedGame>(),
        ));
    gh.factory<_i46.CategoriesBloc>(
        () => _i46.CategoriesBloc(loadCategories: gh<_i37.LoadCategories>()));
    gh.factory<_i47.CommandsBloc>(
        () => _i47.CommandsBloc(loadCommandsUseCase: gh<_i38.LoadCommands>()));
    gh.factory<_i48.DictionaryBloc>(
        () => _i48.DictionaryBloc(gh<_i44.SyncDictionary>()));
    gh.factory<_i49.GameBloc>(() =>
        _i49.GameBloc(wordsUseCasesFacade: gh<_i45.WordsUseCasesFacade>()));
    return this;
  }
}
