import 'dart:developer';

import 'package:alias/src/feature/sync/domain/repository/dictionary_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dictionary_bloc.freezed.dart';
part 'dictionary_event.dart';
part 'dictionary_state.dart';

@Injectable()
class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  final DictionaryRepository _repository;

  DictionaryBloc({required DictionaryRepository repository})
      : _repository = repository,
        super(const DictionaryState.isLoading()) {
    on<_SyncDictionary>(_onSyncDictionary);
  }

  Future<void> _onSyncDictionary(
    _SyncDictionary event,
    Emitter<DictionaryState> emit,
  ) async {
    try {
      await _repository.syncDictionary();
      emit(const DictionaryState.sync());
    } on Object catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    } finally {
      final isReady = await _repository.isDictionaryReadyForGame();

      emit(
        isReady
            ? const DictionaryState.sync()
            : const DictionaryState.syncError(
                reason: 'Не удалось синхронизировать данные',
              ),
      );
    }
  }
}
