import 'package:alias/feature/sync/domain/repository/dictionary_repository.dart';
import 'package:alias/feature/sync/domain/usecases/sync_dictionary.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dictionary_event.dart';

part 'dictionary_state.dart';

part 'dictionary_bloc.freezed.dart';

@Injectable()
class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  final SyncDictionary _syncDictionary;

  DictionaryBloc(SyncDictionary syncDictionary)
      : _syncDictionary = syncDictionary,
        super(const DictionaryState.isLoading()) {
    on<_SyncDictionary>(_onSyncDictionary);
  }

  Future<void> _onSyncDictionary(_SyncDictionary event, Emitter emit) async {
    var result = _syncDictionary.execute();



    await Future.delayed(const Duration(seconds: 3));
    emit(const DictionaryState.sync());
  }
}
