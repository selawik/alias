// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DictionaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() syncDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? syncDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? syncDictionary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncDictionary value) syncDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncDictionary value)? syncDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncDictionary value)? syncDictionary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryEventCopyWith<$Res> {
  factory $DictionaryEventCopyWith(
          DictionaryEvent value, $Res Function(DictionaryEvent) then) =
      _$DictionaryEventCopyWithImpl<$Res, DictionaryEvent>;
}

/// @nodoc
class _$DictionaryEventCopyWithImpl<$Res, $Val extends DictionaryEvent>
    implements $DictionaryEventCopyWith<$Res> {
  _$DictionaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SyncDictionaryImplCopyWith<$Res> {
  factory _$$SyncDictionaryImplCopyWith(_$SyncDictionaryImpl value,
          $Res Function(_$SyncDictionaryImpl) then) =
      __$$SyncDictionaryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncDictionaryImplCopyWithImpl<$Res>
    extends _$DictionaryEventCopyWithImpl<$Res, _$SyncDictionaryImpl>
    implements _$$SyncDictionaryImplCopyWith<$Res> {
  __$$SyncDictionaryImplCopyWithImpl(
      _$SyncDictionaryImpl _value, $Res Function(_$SyncDictionaryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SyncDictionaryImpl implements _SyncDictionary {
  const _$SyncDictionaryImpl();

  @override
  String toString() {
    return 'DictionaryEvent.syncDictionary()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncDictionaryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() syncDictionary,
  }) {
    return syncDictionary();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? syncDictionary,
  }) {
    return syncDictionary?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? syncDictionary,
    required TResult orElse(),
  }) {
    if (syncDictionary != null) {
      return syncDictionary();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncDictionary value) syncDictionary,
  }) {
    return syncDictionary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncDictionary value)? syncDictionary,
  }) {
    return syncDictionary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncDictionary value)? syncDictionary,
    required TResult orElse(),
  }) {
    if (syncDictionary != null) {
      return syncDictionary(this);
    }
    return orElse();
  }
}

abstract class _SyncDictionary implements DictionaryEvent {
  const factory _SyncDictionary() = _$SyncDictionaryImpl;
}

/// @nodoc
mixin _$DictionaryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isLoading,
    required TResult Function() sync,
    required TResult Function(String reason) syncError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isLoading,
    TResult? Function()? sync,
    TResult? Function(String reason)? syncError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isLoading,
    TResult Function()? sync,
    TResult Function(String reason)? syncError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Sync value) sync,
    required TResult Function(_SyncError value) syncError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_Sync value)? sync,
    TResult? Function(_SyncError value)? syncError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Sync value)? sync,
    TResult Function(_SyncError value)? syncError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryStateCopyWith<$Res> {
  factory $DictionaryStateCopyWith(
          DictionaryState value, $Res Function(DictionaryState) then) =
      _$DictionaryStateCopyWithImpl<$Res, DictionaryState>;
}

/// @nodoc
class _$DictionaryStateCopyWithImpl<$Res, $Val extends DictionaryState>
    implements $DictionaryStateCopyWith<$Res> {
  _$DictionaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IsLoadingImplCopyWith<$Res> {
  factory _$$IsLoadingImplCopyWith(
          _$IsLoadingImpl value, $Res Function(_$IsLoadingImpl) then) =
      __$$IsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsLoadingImplCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$IsLoadingImpl>
    implements _$$IsLoadingImplCopyWith<$Res> {
  __$$IsLoadingImplCopyWithImpl(
      _$IsLoadingImpl _value, $Res Function(_$IsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsLoadingImpl implements _IsLoading {
  const _$IsLoadingImpl();

  @override
  String toString() {
    return 'DictionaryState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isLoading,
    required TResult Function() sync,
    required TResult Function(String reason) syncError,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isLoading,
    TResult? Function()? sync,
    TResult? Function(String reason)? syncError,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isLoading,
    TResult Function()? sync,
    TResult Function(String reason)? syncError,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Sync value) sync,
    required TResult Function(_SyncError value) syncError,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_Sync value)? sync,
    TResult? Function(_SyncError value)? syncError,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Sync value)? sync,
    TResult Function(_SyncError value)? syncError,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements DictionaryState {
  const factory _IsLoading() = _$IsLoadingImpl;
}

/// @nodoc
abstract class _$$SyncImplCopyWith<$Res> {
  factory _$$SyncImplCopyWith(
          _$SyncImpl value, $Res Function(_$SyncImpl) then) =
      __$$SyncImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncImplCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$SyncImpl>
    implements _$$SyncImplCopyWith<$Res> {
  __$$SyncImplCopyWithImpl(_$SyncImpl _value, $Res Function(_$SyncImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SyncImpl implements _Sync {
  const _$SyncImpl();

  @override
  String toString() {
    return 'DictionaryState.sync()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isLoading,
    required TResult Function() sync,
    required TResult Function(String reason) syncError,
  }) {
    return sync();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isLoading,
    TResult? Function()? sync,
    TResult? Function(String reason)? syncError,
  }) {
    return sync?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isLoading,
    TResult Function()? sync,
    TResult Function(String reason)? syncError,
    required TResult orElse(),
  }) {
    if (sync != null) {
      return sync();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Sync value) sync,
    required TResult Function(_SyncError value) syncError,
  }) {
    return sync(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_Sync value)? sync,
    TResult? Function(_SyncError value)? syncError,
  }) {
    return sync?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Sync value)? sync,
    TResult Function(_SyncError value)? syncError,
    required TResult orElse(),
  }) {
    if (sync != null) {
      return sync(this);
    }
    return orElse();
  }
}

abstract class _Sync implements DictionaryState {
  const factory _Sync() = _$SyncImpl;
}

/// @nodoc
abstract class _$$SyncErrorImplCopyWith<$Res> {
  factory _$$SyncErrorImplCopyWith(
          _$SyncErrorImpl value, $Res Function(_$SyncErrorImpl) then) =
      __$$SyncErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$SyncErrorImplCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$SyncErrorImpl>
    implements _$$SyncErrorImplCopyWith<$Res> {
  __$$SyncErrorImplCopyWithImpl(
      _$SyncErrorImpl _value, $Res Function(_$SyncErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$SyncErrorImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SyncErrorImpl implements _SyncError {
  const _$SyncErrorImpl({required this.reason});

  @override
  final String reason;

  @override
  String toString() {
    return 'DictionaryState.syncError(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncErrorImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncErrorImplCopyWith<_$SyncErrorImpl> get copyWith =>
      __$$SyncErrorImplCopyWithImpl<_$SyncErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isLoading,
    required TResult Function() sync,
    required TResult Function(String reason) syncError,
  }) {
    return syncError(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isLoading,
    TResult? Function()? sync,
    TResult? Function(String reason)? syncError,
  }) {
    return syncError?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isLoading,
    TResult Function()? sync,
    TResult Function(String reason)? syncError,
    required TResult orElse(),
  }) {
    if (syncError != null) {
      return syncError(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Sync value) sync,
    required TResult Function(_SyncError value) syncError,
  }) {
    return syncError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_Sync value)? sync,
    TResult? Function(_SyncError value)? syncError,
  }) {
    return syncError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Sync value)? sync,
    TResult Function(_SyncError value)? syncError,
    required TResult orElse(),
  }) {
    if (syncError != null) {
      return syncError(this);
    }
    return orElse();
  }
}

abstract class _SyncError implements DictionaryState {
  const factory _SyncError({required final String reason}) = _$SyncErrorImpl;

  String get reason;
  @JsonKey(ignore: true)
  _$$SyncErrorImplCopyWith<_$SyncErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
