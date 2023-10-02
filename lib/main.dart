import 'dart:async';
import 'dart:developer';

import 'package:alias/firebase_options.dart';
import 'package:alias/src/core/application.dart';
import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:alias/src/feature/sync/presentation/bloc/dictionary_bloc.dart';
import 'package:alias/src/feature/theming/presentation/bloc/theme_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      di.configureDependencies();

      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      final dictionaryBloc = di.locator.get<DictionaryBloc>()
        ..add(const DictionaryEvent.syncDictionary());

      final gameBloc = di.locator.get<GameBloc>()..add(const GameEvent.init());

      final brightness =
          SchedulerBinding.instance.platformDispatcher.platformBrightness;

      final themeBloc = di.locator.get<ThemeBloc>(
        param1: brightness == Brightness.dark,
      );

      runApp(
        MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: dictionaryBloc,
            ),
            BlocProvider.value(
              value: gameBloc,
            ),
            BlocProvider.value(
              value: themeBloc,
            ),
          ],
          child: const Application(),
        ),
      );
    },
    (error, stackTrace) {
      log(
        error.toString(),
        stackTrace: stackTrace,
      );
    },
  );
}
