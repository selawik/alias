import 'package:alias/feature/sync/domain/repository/dictionary_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dictionary_event.dart';

part 'dictionary_state.dart';

part 'dictionary_bloc.freezed.dart';

@Injectable()
class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  final DictionaryRepository _repository;

  DictionaryBloc(DictionaryRepository repository)
      : _repository = repository,
        super(const DictionaryState.isLoading()) {
    on<_SyncDictionary>(_onSyncDictionary);
  }

  Future<void> _onSyncDictionary(_SyncDictionary event, Emitter emit) async {}
}
