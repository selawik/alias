import 'package:alias/core/application.dart';
import 'package:alias/core/bloc/alias_bloc/alias_bloc.dart';
import 'package:alias/core/injection.dart' as di;
import 'package:alias/feature/game/presentation/bloc/game_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  di.configureDependencies();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.locator.get<GameBloc>()),
        BlocProvider(create: (context) => di.locator.get<AliasBloc>()),
      ],
      child: const Application(),
    ),
  );
}
