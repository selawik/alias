part of 'dictionary_bloc.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const factory DictionaryState.isLoading() = _IsLoading;
  const factory DictionaryState.sync() = _Sync;
}
