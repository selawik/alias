import 'package:alias/firebase_options.dart';
import 'package:alias/src/core/application.dart';
import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/feature/game/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:alias/src/feature/sync/presentation/bloc/dictionary_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  di.configureDependencies();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<DictionaryBloc>(
          create: (context) => di.locator.get<DictionaryBloc>()
            ..add(const DictionaryEvent.syncDictionary()),
        ),
        BlocProvider<GameBloc>(
          create: (context) =>
              di.locator.get<GameBloc>()..add(const GameEvent.init()),
        ),
      ],
      child: const Application(),
    ),
  );
}
