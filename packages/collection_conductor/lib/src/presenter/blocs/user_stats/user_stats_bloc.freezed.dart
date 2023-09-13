// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_stats_bloc.dart';

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
    required TResult Function() error,
    required TResult Function(UserStats userStats) withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(UserStats userStats)? withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(UserStats userStats)? withData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_WithData value) withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_WithData value)? withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_WithData value)? withData,
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
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$UserStatsStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'UserStatsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(UserStats userStats) withData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(UserStats userStats)? withData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(UserStats userStats)? withData,
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
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_WithData value) withData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_WithData value)? withData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_WithData value)? withData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements UserStatsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$UserStatsStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'UserStatsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(UserStats userStats) withData,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(UserStats userStats)? withData,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(UserStats userStats)? withData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_WithData value) withData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_WithData value)? withData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_WithData value)? withData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UserStatsState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_WithDataCopyWith<$Res> {
  factory _$$_WithDataCopyWith(
          _$_WithData value, $Res Function(_$_WithData) then) =
      __$$_WithDataCopyWithImpl<$Res>;
  @useResult
  $Res call({UserStats userStats});
}

/// @nodoc
class __$$_WithDataCopyWithImpl<$Res>
    extends _$UserStatsStateCopyWithImpl<$Res, _$_WithData>
    implements _$$_WithDataCopyWith<$Res> {
  __$$_WithDataCopyWithImpl(
      _$_WithData _value, $Res Function(_$_WithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userStats = null,
  }) {
    return _then(_$_WithData(
      userStats: null == userStats
          ? _value.userStats
          : userStats // ignore: cast_nullable_to_non_nullable
              as UserStats,
    ));
  }
}

/// @nodoc

class _$_WithData implements _WithData {
  const _$_WithData({required this.userStats});

  @override
  final UserStats userStats;

  @override
  String toString() {
    return 'UserStatsState.withData(userStats: $userStats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithData &&
            (identical(other.userStats, userStats) ||
                other.userStats == userStats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userStats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithDataCopyWith<_$_WithData> get copyWith =>
      __$$_WithDataCopyWithImpl<_$_WithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(UserStats userStats) withData,
  }) {
    return withData(userStats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(UserStats userStats)? withData,
  }) {
    return withData?.call(userStats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(UserStats userStats)? withData,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(userStats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_WithData value) withData,
  }) {
    return withData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_WithData value)? withData,
  }) {
    return withData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_WithData value)? withData,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(this);
    }
    return orElse();
  }
}

abstract class _WithData implements UserStatsState {
  const factory _WithData({required final UserStats userStats}) = _$_WithData;

  UserStats get userStats;
  @JsonKey(ignore: true)
  _$$_WithDataCopyWith<_$_WithData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserStatsEvent {
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) fetchStats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? fetchStats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? fetchStats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStats value) fetchStats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchStats value)? fetchStats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStats value)? fetchStats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStatsEventCopyWith<UserStatsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatsEventCopyWith<$Res> {
  factory $UserStatsEventCopyWith(
          UserStatsEvent value, $Res Function(UserStatsEvent) then) =
      _$UserStatsEventCopyWithImpl<$Res, UserStatsEvent>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$UserStatsEventCopyWithImpl<$Res, $Val extends UserStatsEvent>
    implements $UserStatsEventCopyWith<$Res> {
  _$UserStatsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchStatsCopyWith<$Res>
    implements $UserStatsEventCopyWith<$Res> {
  factory _$$_FetchStatsCopyWith(
          _$_FetchStats value, $Res Function(_$_FetchStats) then) =
      __$$_FetchStatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_FetchStatsCopyWithImpl<$Res>
    extends _$UserStatsEventCopyWithImpl<$Res, _$_FetchStats>
    implements _$$_FetchStatsCopyWith<$Res> {
  __$$_FetchStatsCopyWithImpl(
      _$_FetchStats _value, $Res Function(_$_FetchStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_FetchStats(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchStats implements _FetchStats {
  _$_FetchStats({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'UserStatsEvent.fetchStats(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchStats &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchStatsCopyWith<_$_FetchStats> get copyWith =>
      __$$_FetchStatsCopyWithImpl<_$_FetchStats>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) fetchStats,
  }) {
    return fetchStats(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? fetchStats,
  }) {
    return fetchStats?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? fetchStats,
    required TResult orElse(),
  }) {
    if (fetchStats != null) {
      return fetchStats(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStats value) fetchStats,
  }) {
    return fetchStats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchStats value)? fetchStats,
  }) {
    return fetchStats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStats value)? fetchStats,
    required TResult orElse(),
  }) {
    if (fetchStats != null) {
      return fetchStats(this);
    }
    return orElse();
  }
}

abstract class _FetchStats implements UserStatsEvent {
  factory _FetchStats({required final String userId}) = _$_FetchStats;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_FetchStatsCopyWith<_$_FetchStats> get copyWith =>
      throw _privateConstructorUsedError;
}
