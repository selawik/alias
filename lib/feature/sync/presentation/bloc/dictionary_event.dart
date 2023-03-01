part of 'dictionary_bloc.dart';

@freezed
class DictionaryEvent with _$DictionaryEvent {
  const factory DictionaryEvent.syncDictionary() = _SyncDictionary;
}
