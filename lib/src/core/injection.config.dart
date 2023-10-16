// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alias/src/core/database/database.dart' as _i9;
import 'package:alias/src/core/database/db_provider.dart' as _i10;
import 'package:alias/src/core/router/app_router.dart' as _i4;
import 'package:alias/src/feature/categories/data/data_source/category_local_data_source.dart'
    as _i17;
import 'package:alias/src/feature/categories/data/data_source/category_remote_data_source.dart'
    as _i6;
import 'package:alias/src/feature/categories/data/mapper/category_mapper.dart'
    as _i5;
import 'package:alias/src/feature/categories/domain/repository/category_repository.dart'
    as _i23;
import 'package:alias/src/feature/categories/presentation/bloc/categories_bloc.dart'
    as _i31;
import 'package:alias/src/feature/commands/data/data_source/commands_local_data_source.dart'
    as _i18;
import 'package:alias/src/feature/commands/data/data_source/commands_remote_data_source.dart'
    as _i8;
import 'package:alias/src/feature/commands/data/mapper/command_mapper.dart'
    as _i7;
import 'package:alias/src/feature/commands/domain/repository/commands_repository.dart'
    as _i24;
import 'package:alias/src/feature/commands/presentation/bloc/commands_bloc.dart'
    as _i32;
import 'package:alias/src/feature/game/data/data_source/words_local_data_source.dart'
    as _i13;
import 'package:alias/src/feature/game/data/data_source/words_remote_data_source.dart'
    as _i15;
import 'package:alias/src/feature/game/data/mapper/words_mapper.dart' as _i14;
import 'package:alias/src/feature/game/domain/repository/words_repository.dart'
    as _i16;
import 'package:alias/src/feature/game/domain/usecases/get_played_words.dart'
    as _i21;
import 'package:alias/src/feature/game/domain/usecases/get_unfinished_game.dart'
    as _i22;
import 'package:alias/src/feature/game/domain/usecases/load_words.dart' as _i25;
import 'package:alias/src/feature/game/domain/usecases/reset_game_history.dart'
    as _i26;
import 'package:alias/src/feature/game/domain/usecases/reset_unfinished_game.dart'
    as _i27;
import 'package:alias/src/feature/game/domain/usecases/save_played_words.dart'
    as _i28;
import 'package:alias/src/feature/game/domain/usecases/save_started_game.dart'
    as _i29;
import 'package:alias/src/feature/game/domain/words_usecases_facade.dart'
    as _i30;
import 'package:alias/src/feature/game/presentation/bloc/answer_bloc/answer_bloc.dart'
    as _i3;
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart'
    as _i35;
import 'package:alias/src/feature/game_settings/presentation/bloc/game_settings_bloc.dart'
    as _i11;
import 'package:alias/src/feature/sync/data/data_source/dictionary_local_data_source.dart'
    as _i33;
import 'package:alias/src/feature/sync/data/data_source/dictionary_remote_data_source.dart'
    as _i20;
import 'package:alias/src/feature/sync/data/data_source/mapper/dictionary_mapper_facade.dart'
    as _i19;
import 'package:alias/src/feature/sync/domain/repository/dictionary_repository.dart'
    as _i34;
import 'package:alias/src/feature/sync/presentation/bloc/dictionary_bloc.dart'
    as _i36;
import 'package:alias/src/feature/theming/presentation/bloc/theme_bloc.dart'
    as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
        () => _i6.FirebaseCategoryDataSource());
    gh.factory<_i7.CommandMapper>(() => _i7.CommandMapper());
    gh.factory<_i8.CommandsRemoteDataSource>(
        () => _i8.FirebaseCommandsDataSource());
    gh.singleton<_i9.Database>(_i9.Database());
    gh.singleton<_i10.DbProvider>(_i10.DbProvider(db: gh<_i9.Database>()));
    gh.factory<_i11.GameSettingsBloc>(() => _i11.GameSettingsBloc());
    gh.factoryParam<_i12.ThemeBloc, bool, dynamic>((
      isSystemDarkThemeEnabled,
      _,
    ) =>
        _i12.ThemeBloc(isSystemDarkThemeEnabled: isSystemDarkThemeEnabled));
    gh.factory<_i13.WordsLocalDataSource>(
        () => _i13.DriftLocalDataSource(dbProvider: gh<_i10.DbProvider>()));
    gh.factory<_i14.WordsMapper>(() => _i14.WordsMapper());
    gh.factory<_i15.WordsRemoteDataSource>(
        () => _i15.FirebaseWordsDataSource());
    gh.factory<_i16.WordsRepository>(() => _i16.WordsRepositoryImpl(
          remoteDataSource: gh<_i15.WordsRemoteDataSource>(),
          localDataSource: gh<_i13.WordsLocalDataSource>(),
          mapper: gh<_i14.WordsMapper>(),
        ));
    gh.factory<_i17.CategoryLocalDataSource>(
        () => _i17.DriftCategoryDataSource(dbProvider: gh<_i10.DbProvider>()));
    gh.factory<_i18.CommandsLocalDataSource>(() =>
        _i18.DriftCommandsLocalDataSource(dbProvider: gh<_i10.DbProvider>()));
    gh.factory<_i19.DictionaryMapperFacade>(
        () => _i19.DictionaryMapperFacadeImpl(
              gh<_i5.CategoryMapper>(),
              gh<_i14.WordsMapper>(),
              gh<_i7.CommandMapper>(),
            ));
    gh.factory<_i20.DictionaryRemoteDataSource>(() =>
        _i20.FirebaseDictionaryDataSource(
            mapperFacade: gh<_i19.DictionaryMapperFacade>()));
    gh.factory<_i21.GetPlayedWords>(
        () => _i21.GetPlayedWords(repository: gh<_i16.WordsRepository>()));
    gh.factory<_i22.GetUnfinishedGame>(
        () => _i22.GetUnfinishedGame(repository: gh<_i16.WordsRepository>()));
    gh.factory<_i23.ICategoryRepository>(() => _i23.CategoryRepositoryImpl(
          remoteDataSource: gh<_i6.CategoryRemoteDataSource>(),
          localDataSource: gh<_i17.CategoryLocalDataSource>(),
          mapper: gh<_i5.CategoryMapper>(),
        ));
    gh.factory<_i24.ICommandsRepository>(() => _i24.CommandsRepositoryImpl(
          remoteDataSource: gh<_i8.CommandsRemoteDataSource>(),
          localDataSource: gh<_i18.CommandsLocalDataSource>(),
          commandMapper: gh<_i7.CommandMapper>(),
        ));
    gh.factory<_i25.LoadWords>(
        () => _i25.LoadWords(repository: gh<_i16.WordsRepository>()));
    gh.factory<_i26.ResetGameHistory>(
        () => _i26.ResetGameHistory(repository: gh<_i16.WordsRepository>()));
    gh.factory<_i27.ResetUnfinishedGame>(
        () => _i27.ResetUnfinishedGame(repository: gh<_i16.WordsRepository>()));
    gh.factory<_i28.SavePlayedWords>(
        () => _i28.SavePlayedWords(repository: gh<_i16.WordsRepository>()));
    gh.factory<_i29.SaveStartedGame>(
        () => _i29.SaveStartedGame(repository: gh<_i16.WordsRepository>()));
    gh.factory<_i30.WordsUseCasesFacade>(() => _i30.WordsUseCasesFacade(
          loadWords: gh<_i25.LoadWords>(),
          savePlayedWords: gh<_i28.SavePlayedWords>(),
          getPlayedWords: gh<_i21.GetPlayedWords>(),
          resetGameHistory: gh<_i26.ResetGameHistory>(),
          getUnfinishedGame: gh<_i22.GetUnfinishedGame>(),
          saveStartedGame: gh<_i29.SaveStartedGame>(),
          resetUnfinishedGame: gh<_i27.ResetUnfinishedGame>(),
        ));
    gh.factory<_i31.CategoriesBloc>(
        () => _i31.CategoriesBloc(repository: gh<_i23.ICategoryRepository>()));
    gh.factory<_i32.CommandsBloc>(
        () => _i32.CommandsBloc(repository: gh<_i24.ICommandsRepository>()));
    gh.factory<_i33.DictionaryLocalDataSource>(
        () => _i33.DriftDictionaryDataSource(
              gh<_i10.DbProvider>(),
              gh<_i19.DictionaryMapperFacade>(),
            ));
    gh.factory<_i34.DictionaryRepository>(() => _i34.DictionaryRepositoryImpl(
          gh<_i20.DictionaryRemoteDataSource>(),
          gh<_i33.DictionaryLocalDataSource>(),
        ));
    gh.factory<_i35.GameBloc>(() =>
        _i35.GameBloc(wordsUseCasesFacade: gh<_i30.WordsUseCasesFacade>()));
    gh.factory<_i36.DictionaryBloc>(
        () => _i36.DictionaryBloc(repository: gh<_i34.DictionaryRepository>()));
    return this;
  }
}
