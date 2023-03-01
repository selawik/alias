import 'package:alias/core/widget/custom_progress_indicator.dart';
import 'package:alias/feature/sync/presentation/bloc/dictionary_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SynchronizationPage extends StatelessWidget {
  const SynchronizationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<DictionaryBloc, DictionaryState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        child: const Center(
          child: CustomProgressIndicator(),
        ),
      ),
    );
  }
}
