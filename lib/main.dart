import 'package:alias/core/application.dart';
import 'package:alias/core/firestore_filler.dart';
import 'package:alias/core/injection.dart' as di;
import 'package:alias/feature/sync/presentation/bloc/dictionary_bloc.dart';
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:alias/firebase_options.dart';
import 'package:path/path.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  di.configureDependencies();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseAppCheck.instance.activate();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<DictionaryBloc>(
          create: (context) => di.locator.get<DictionaryBloc>(),
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
