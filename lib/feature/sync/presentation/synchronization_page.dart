import 'package:alias/core/router/app_router.dart';
import 'package:alias/core/widget/custom_progress_indicator.dart';
import 'package:alias/feature/sync/presentation/bloc/dictionary_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alias/core/injection.dart' as di;

class SynchronizationPage extends StatelessWidget {
  const SynchronizationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<DictionaryBloc, DictionaryState>(
        listener: (context, state) {
          var router = di.locator.get<AppRouter>();

          state.whenOrNull(sync: () => router.replace(const HomePageRoute()));
        },
        child: const Center(
          child: CustomProgressIndicator(),
        ),
      ),
    );
  }
}
