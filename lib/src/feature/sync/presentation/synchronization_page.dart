import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:alias/src/core/widget/custom_progress_indicator.dart';
import 'package:alias/src/feature/sync/presentation/bloc/dictionary_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SynchronizationPage extends StatelessWidget {
  const SynchronizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<DictionaryBloc, DictionaryState>(
        listener: (context, state) {
          final router = di.locator.get<AppRouter>();

          state.whenOrNull(sync: () => router.replace(const HomePageRoute()));
        },
        child: const Center(
          child: CustomProgressIndicator(),
        ),
      ),
    );
  }
}
