// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_stats_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserStatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() withNoData,
    required TResult Function(Object error, StackTrace stackTrace) withError,
    required TResult Function(UserStats stats) withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? withNoData,
    TResult? Function(Object error, StackTrace stackTrace)? withError,
    TResult? Function(UserStats stats)? withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? withNoData,
    TResult Function(Object error, StackTrace stackTrace)? withError,
    TResult Function(UserStats stats)? withData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStatsLoading value) loading,
    required TResult Function(WithNoData value) withNoData,
    required TResult Function(UserStatsWithError value) withError,
    required TResult Function(UserStatsWithData value) withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStatsLoading value)? loading,
    TResult? Function(WithNoData value)? withNoData,
    TResult? Function(UserStatsWithError value)? withError,
    TResult? Function(UserStatsWithData value)? withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStatsLoading value)? loading,
    TResult Function(WithNoData value)? withNoData,
    TResult Function(UserStatsWithError value)? withError,
    TResult Function(UserStatsWithData value)? withData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatsStateCopyWith<$Res> {
  factory $UserStatsStateCopyWith(
          UserStatsState value, $Res Function(UserStatsState) then) =
      _$UserStatsStateCopyWithImpl<$Res, UserStatsState>;
}

/// @nodoc
class _$UserStatsStateCopyWithImpl<$Res, $Val extends UserStatsState>
    implements $UserStatsStateCopyWith<$Res> {
  _$UserStatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserStatsLoadingCopyWith<$Res> {
  factory _$$UserStatsLoadingCopyWith(
          _$UserStatsLoading value, $Res Function(_$UserStatsLoading) then) =
      __$$UserStatsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStatsLoadingCopyWithImpl<$Res>
    extends _$UserStatsStateCopyWithImpl<$Res, _$UserStatsLoading>
    implements _$$UserStatsLoadingCopyWith<$Res> {
  __$$UserStatsLoadingCopyWithImpl(
      _$UserStatsLoading _value, $Res Function(_$UserStatsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStatsLoading implements UserStatsLoading {
  _$UserStatsLoading();

  @override
  String toString() {
    return 'UserStatsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStatsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() withNoData,
    required TResult Function(Object error, StackTrace stackTrace) withError,
    required TResult Function(UserStats stats) withData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? withNoData,
    TResult? Function(Object error, StackTrace stackTrace)? withError,
    TResult? Function(UserStats stats)? withData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? withNoData,
    TResult Function(Object error, StackTrace stackTrace)? withError,
    TResult Function(UserStats stats)? withData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStatsLoading value) loading,
    required TResult Function(WithNoData value) withNoData,
    required TResult Function(UserStatsWithError value) withError,
    required TResult Function(UserStatsWithData value) withData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStatsLoading value)? loading,
    TResult? Function(WithNoData value)? withNoData,
    TResult? Function(UserStatsWithError value)? withError,
    TResult? Function(UserStatsWithData value)? withData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStatsLoading value)? loading,
    TResult Function(WithNoData value)? withNoData,
    TResult Function(UserStatsWithError value)? withError,
    TResult Function(UserStatsWithData value)? withData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserStatsLoading implements UserStatsState {
  factory UserStatsLoading() = _$UserStatsLoading;
}

/// @nodoc
abstract class _$$WithNoDataCopyWith<$Res> {
  factory _$$WithNoDataCopyWith(
          _$WithNoData value, $Res Function(_$WithNoData) then) =
      __$$WithNoDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WithNoDataCopyWithImpl<$Res>
    extends _$UserStatsStateCopyWithImpl<$Res, _$WithNoData>
    implements _$$WithNoDataCopyWith<$Res> {
  __$$WithNoDataCopyWithImpl(
      _$WithNoData _value, $Res Function(_$WithNoData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WithNoData implements WithNoData {
  _$WithNoData();

  @override
  String toString() {
    return 'UserStatsState.withNoData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WithNoData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() withNoData,
    required TResult Function(Object error, StackTrace stackTrace) withError,
    required TResult Function(UserStats stats) withData,
  }) {
    return withNoData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? withNoData,
    TResult? Function(Object error, StackTrace stackTrace)? withError,
    TResult? Function(UserStats stats)? withData,
  }) {
    return withNoData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? withNoData,
    TResult Function(Object error, StackTrace stackTrace)? withError,
    TResult Function(UserStats stats)? withData,
    required TResult orElse(),
  }) {
    if (withNoData != null) {
      return withNoData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStatsLoading value) loading,
    required TResult Function(WithNoData value) withNoData,
    required TResult Function(UserStatsWithError value) withError,
    required TResult Function(UserStatsWithData value) withData,
  }) {
    return withNoData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStatsLoading value)? loading,
    TResult? Function(WithNoData value)? withNoData,
    TResult? Function(UserStatsWithError value)? withError,
    TResult? Function(UserStatsWithData value)? withData,
  }) {
    return withNoData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStatsLoading value)? loading,
    TResult Function(WithNoData value)? withNoData,
    TResult Function(UserStatsWithError value)? withError,
    TResult Function(UserStatsWithData value)? withData,
    required TResult orElse(),
  }) {
    if (withNoData != null) {
      return withNoData(this);
    }
    return orElse();
  }
}

abstract class WithNoData implements UserStatsState {
  factory WithNoData() = _$WithNoData;
}

/// @nodoc
abstract class _$$UserStatsWithErrorCopyWith<$Res> {
  factory _$$UserStatsWithErrorCopyWith(_$UserStatsWithError value,
          $Res Function(_$UserStatsWithError) then) =
      __$$UserStatsWithErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UserStatsWithErrorCopyWithImpl<$Res>
    extends _$UserStatsStateCopyWithImpl<$Res, _$UserStatsWithError>
    implements _$$UserStatsWithErrorCopyWith<$Res> {
  __$$UserStatsWithErrorCopyWithImpl(
      _$UserStatsWithError _value, $Res Function(_$UserStatsWithError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UserStatsWithError(
      error: null == error ? _value.error : error,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UserStatsWithError implements UserStatsWithError {
  _$UserStatsWithError({required this.error, required this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UserStatsState.withError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatsWithError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatsWithErrorCopyWith<_$UserStatsWithError> get copyWith =>
      __$$UserStatsWithErrorCopyWithImpl<_$UserStatsWithError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() withNoData,
    required TResult Function(Object error, StackTrace stackTrace) withError,
    required TResult Function(UserStats stats) withData,
  }) {
    return withError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? withNoData,
    TResult? Function(Object error, StackTrace stackTrace)? withError,
    TResult? Function(UserStats stats)? withData,
  }) {
    return withError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? withNoData,
    TResult Function(Object error, StackTrace stackTrace)? withError,
    TResult Function(UserStats stats)? withData,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStatsLoading value) loading,
    required TResult Function(WithNoData value) withNoData,
    required TResult Function(UserStatsWithError value) withError,
    required TResult Function(UserStatsWithData value) withData,
  }) {
    return withError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStatsLoading value)? loading,
    TResult? Function(WithNoData value)? withNoData,
    TResult? Function(UserStatsWithError value)? withError,
    TResult? Function(UserStatsWithData value)? withData,
  }) {
    return withError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStatsLoading value)? loading,
    TResult Function(WithNoData value)? withNoData,
    TResult Function(UserStatsWithError value)? withError,
    TResult Function(UserStatsWithData value)? withData,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(this);
    }
    return orElse();
  }
}

abstract class UserStatsWithError implements UserStatsState {
  factory UserStatsWithError(
      {required final Object error,
      required final StackTrace stackTrace}) = _$UserStatsWithError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UserStatsWithErrorCopyWith<_$UserStatsWithError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStatsWithDataCopyWith<$Res> {
  factory _$$UserStatsWithDataCopyWith(
          _$UserStatsWithData value, $Res Function(_$UserStatsWithData) then) =
      __$$UserStatsWithDataCopyWithImpl<$Res>;
  @useResult
  $Res call({UserStats stats});
}

/// @nodoc
class __$$UserStatsWithDataCopyWithImpl<$Res>
    extends _$UserStatsStateCopyWithImpl<$Res, _$UserStatsWithData>
    implements _$$UserStatsWithDataCopyWith<$Res> {
  __$$UserStatsWithDataCopyWithImpl(
      _$UserStatsWithData _value, $Res Function(_$UserStatsWithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stats = null,
  }) {
    return _then(_$UserStatsWithData(
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as UserStats,
    ));
  }
}

/// @nodoc

class _$UserStatsWithData implements UserStatsWithData {
  _$UserStatsWithData({required this.stats});

  @override
  final UserStats stats;

  @override
  String toString() {
    return 'UserStatsState.withData(stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatsWithData &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatsWithDataCopyWith<_$UserStatsWithData> get copyWith =>
      __$$UserStatsWithDataCopyWithImpl<_$UserStatsWithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() withNoData,
    required TResult Function(Object error, StackTrace stackTrace) withError,
    required TResult Function(UserStats stats) withData,
  }) {
    return withData(stats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? withNoData,
    TResult? Function(Object error, StackTrace stackTrace)? withError,
    TResult? Function(UserStats stats)? withData,
  }) {
    return withData?.call(stats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? withNoData,
    TResult Function(Object error, StackTrace stackTrace)? withError,
    TResult Function(UserStats stats)? withData,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(stats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStatsLoading value) loading,
    required TResult Function(WithNoData value) withNoData,
    required TResult Function(UserStatsWithError value) withError,
    required TResult Function(UserStatsWithData value) withData,
  }) {
    return withData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStatsLoading value)? loading,
    TResult? Function(WithNoData value)? withNoData,
    TResult? Function(UserStatsWithError value)? withError,
    TResult? Function(UserStatsWithData value)? withData,
  }) {
    return withData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStatsLoading value)? loading,
    TResult Function(WithNoData value)? withNoData,
    TResult Function(UserStatsWithError value)? withError,
    TResult Function(UserStatsWithData value)? withData,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(this);
    }
    return orElse();
  }
}

abstract class UserStatsWithData implements UserStatsState {
  factory UserStatsWithData({required final UserStats stats}) =
      _$UserStatsWithData;

  UserStats get stats;
  @JsonKey(ignore: true)
  _$$UserStatsWithDataCopyWith<_$UserStatsWithData> get copyWith =>
      throw _privateConstructorUsedError;
}
