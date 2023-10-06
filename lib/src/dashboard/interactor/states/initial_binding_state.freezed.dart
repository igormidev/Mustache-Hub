// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initial_binding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitialBindingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error, StackTrace stackTrace)
        gotFatalError,
    required TResult Function() gettingUserModel,
    required TResult Function() gettingUserStats,
    required TResult Function() complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error, StackTrace stackTrace)? gotFatalError,
    TResult? Function()? gettingUserModel,
    TResult? Function()? gettingUserStats,
    TResult? Function()? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error, StackTrace stackTrace)? gotFatalError,
    TResult Function()? gettingUserModel,
    TResult Function()? gettingUserStats,
    TResult Function()? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotFatalError value) gotFatalError,
    required TResult Function(GettingUserModel value) gettingUserModel,
    required TResult Function(GettingUserStats value) gettingUserStats,
    required TResult Function(InitialBindingComplete value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotFatalError value)? gotFatalError,
    TResult? Function(GettingUserModel value)? gettingUserModel,
    TResult? Function(GettingUserStats value)? gettingUserStats,
    TResult? Function(InitialBindingComplete value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotFatalError value)? gotFatalError,
    TResult Function(GettingUserModel value)? gettingUserModel,
    TResult Function(GettingUserStats value)? gettingUserStats,
    TResult Function(InitialBindingComplete value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialBindingStateCopyWith<$Res> {
  factory $InitialBindingStateCopyWith(
          InitialBindingState value, $Res Function(InitialBindingState) then) =
      _$InitialBindingStateCopyWithImpl<$Res, InitialBindingState>;
}

/// @nodoc
class _$InitialBindingStateCopyWithImpl<$Res, $Val extends InitialBindingState>
    implements $InitialBindingStateCopyWith<$Res> {
  _$InitialBindingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GotFatalErrorImplCopyWith<$Res> {
  factory _$$GotFatalErrorImplCopyWith(
          _$GotFatalErrorImpl value, $Res Function(_$GotFatalErrorImpl) then) =
      __$$GotFatalErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GotFatalErrorImplCopyWithImpl<$Res>
    extends _$InitialBindingStateCopyWithImpl<$Res, _$GotFatalErrorImpl>
    implements _$$GotFatalErrorImplCopyWith<$Res> {
  __$$GotFatalErrorImplCopyWithImpl(
      _$GotFatalErrorImpl _value, $Res Function(_$GotFatalErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GotFatalErrorImpl(
      error: null == error ? _value.error : error,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GotFatalErrorImpl implements GotFatalError {
  _$GotFatalErrorImpl({required this.error, required this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'InitialBindingState.gotFatalError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotFatalErrorImpl &&
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
  _$$GotFatalErrorImplCopyWith<_$GotFatalErrorImpl> get copyWith =>
      __$$GotFatalErrorImplCopyWithImpl<_$GotFatalErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error, StackTrace stackTrace)
        gotFatalError,
    required TResult Function() gettingUserModel,
    required TResult Function() gettingUserStats,
    required TResult Function() complete,
  }) {
    return gotFatalError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error, StackTrace stackTrace)? gotFatalError,
    TResult? Function()? gettingUserModel,
    TResult? Function()? gettingUserStats,
    TResult? Function()? complete,
  }) {
    return gotFatalError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error, StackTrace stackTrace)? gotFatalError,
    TResult Function()? gettingUserModel,
    TResult Function()? gettingUserStats,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (gotFatalError != null) {
      return gotFatalError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotFatalError value) gotFatalError,
    required TResult Function(GettingUserModel value) gettingUserModel,
    required TResult Function(GettingUserStats value) gettingUserStats,
    required TResult Function(InitialBindingComplete value) complete,
  }) {
    return gotFatalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotFatalError value)? gotFatalError,
    TResult? Function(GettingUserModel value)? gettingUserModel,
    TResult? Function(GettingUserStats value)? gettingUserStats,
    TResult? Function(InitialBindingComplete value)? complete,
  }) {
    return gotFatalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotFatalError value)? gotFatalError,
    TResult Function(GettingUserModel value)? gettingUserModel,
    TResult Function(GettingUserStats value)? gettingUserStats,
    TResult Function(InitialBindingComplete value)? complete,
    required TResult orElse(),
  }) {
    if (gotFatalError != null) {
      return gotFatalError(this);
    }
    return orElse();
  }
}

abstract class GotFatalError implements InitialBindingState {
  factory GotFatalError(
      {required final Object error,
      required final StackTrace stackTrace}) = _$GotFatalErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GotFatalErrorImplCopyWith<_$GotFatalErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GettingUserModelImplCopyWith<$Res> {
  factory _$$GettingUserModelImplCopyWith(_$GettingUserModelImpl value,
          $Res Function(_$GettingUserModelImpl) then) =
      __$$GettingUserModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingUserModelImplCopyWithImpl<$Res>
    extends _$InitialBindingStateCopyWithImpl<$Res, _$GettingUserModelImpl>
    implements _$$GettingUserModelImplCopyWith<$Res> {
  __$$GettingUserModelImplCopyWithImpl(_$GettingUserModelImpl _value,
      $Res Function(_$GettingUserModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GettingUserModelImpl implements GettingUserModel {
  _$GettingUserModelImpl();

  @override
  String toString() {
    return 'InitialBindingState.gettingUserModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingUserModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error, StackTrace stackTrace)
        gotFatalError,
    required TResult Function() gettingUserModel,
    required TResult Function() gettingUserStats,
    required TResult Function() complete,
  }) {
    return gettingUserModel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error, StackTrace stackTrace)? gotFatalError,
    TResult? Function()? gettingUserModel,
    TResult? Function()? gettingUserStats,
    TResult? Function()? complete,
  }) {
    return gettingUserModel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error, StackTrace stackTrace)? gotFatalError,
    TResult Function()? gettingUserModel,
    TResult Function()? gettingUserStats,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (gettingUserModel != null) {
      return gettingUserModel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotFatalError value) gotFatalError,
    required TResult Function(GettingUserModel value) gettingUserModel,
    required TResult Function(GettingUserStats value) gettingUserStats,
    required TResult Function(InitialBindingComplete value) complete,
  }) {
    return gettingUserModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotFatalError value)? gotFatalError,
    TResult? Function(GettingUserModel value)? gettingUserModel,
    TResult? Function(GettingUserStats value)? gettingUserStats,
    TResult? Function(InitialBindingComplete value)? complete,
  }) {
    return gettingUserModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotFatalError value)? gotFatalError,
    TResult Function(GettingUserModel value)? gettingUserModel,
    TResult Function(GettingUserStats value)? gettingUserStats,
    TResult Function(InitialBindingComplete value)? complete,
    required TResult orElse(),
  }) {
    if (gettingUserModel != null) {
      return gettingUserModel(this);
    }
    return orElse();
  }
}

abstract class GettingUserModel implements InitialBindingState {
  factory GettingUserModel() = _$GettingUserModelImpl;
}

/// @nodoc
abstract class _$$GettingUserStatsImplCopyWith<$Res> {
  factory _$$GettingUserStatsImplCopyWith(_$GettingUserStatsImpl value,
          $Res Function(_$GettingUserStatsImpl) then) =
      __$$GettingUserStatsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingUserStatsImplCopyWithImpl<$Res>
    extends _$InitialBindingStateCopyWithImpl<$Res, _$GettingUserStatsImpl>
    implements _$$GettingUserStatsImplCopyWith<$Res> {
  __$$GettingUserStatsImplCopyWithImpl(_$GettingUserStatsImpl _value,
      $Res Function(_$GettingUserStatsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GettingUserStatsImpl implements GettingUserStats {
  _$GettingUserStatsImpl();

  @override
  String toString() {
    return 'InitialBindingState.gettingUserStats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingUserStatsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error, StackTrace stackTrace)
        gotFatalError,
    required TResult Function() gettingUserModel,
    required TResult Function() gettingUserStats,
    required TResult Function() complete,
  }) {
    return gettingUserStats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error, StackTrace stackTrace)? gotFatalError,
    TResult? Function()? gettingUserModel,
    TResult? Function()? gettingUserStats,
    TResult? Function()? complete,
  }) {
    return gettingUserStats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error, StackTrace stackTrace)? gotFatalError,
    TResult Function()? gettingUserModel,
    TResult Function()? gettingUserStats,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (gettingUserStats != null) {
      return gettingUserStats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotFatalError value) gotFatalError,
    required TResult Function(GettingUserModel value) gettingUserModel,
    required TResult Function(GettingUserStats value) gettingUserStats,
    required TResult Function(InitialBindingComplete value) complete,
  }) {
    return gettingUserStats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotFatalError value)? gotFatalError,
    TResult? Function(GettingUserModel value)? gettingUserModel,
    TResult? Function(GettingUserStats value)? gettingUserStats,
    TResult? Function(InitialBindingComplete value)? complete,
  }) {
    return gettingUserStats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotFatalError value)? gotFatalError,
    TResult Function(GettingUserModel value)? gettingUserModel,
    TResult Function(GettingUserStats value)? gettingUserStats,
    TResult Function(InitialBindingComplete value)? complete,
    required TResult orElse(),
  }) {
    if (gettingUserStats != null) {
      return gettingUserStats(this);
    }
    return orElse();
  }
}

abstract class GettingUserStats implements InitialBindingState {
  factory GettingUserStats() = _$GettingUserStatsImpl;
}

/// @nodoc
abstract class _$$InitialBindingCompleteImplCopyWith<$Res> {
  factory _$$InitialBindingCompleteImplCopyWith(
          _$InitialBindingCompleteImpl value,
          $Res Function(_$InitialBindingCompleteImpl) then) =
      __$$InitialBindingCompleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialBindingCompleteImplCopyWithImpl<$Res>
    extends _$InitialBindingStateCopyWithImpl<$Res,
        _$InitialBindingCompleteImpl>
    implements _$$InitialBindingCompleteImplCopyWith<$Res> {
  __$$InitialBindingCompleteImplCopyWithImpl(
      _$InitialBindingCompleteImpl _value,
      $Res Function(_$InitialBindingCompleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialBindingCompleteImpl implements InitialBindingComplete {
  _$InitialBindingCompleteImpl();

  @override
  String toString() {
    return 'InitialBindingState.complete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialBindingCompleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error, StackTrace stackTrace)
        gotFatalError,
    required TResult Function() gettingUserModel,
    required TResult Function() gettingUserStats,
    required TResult Function() complete,
  }) {
    return complete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error, StackTrace stackTrace)? gotFatalError,
    TResult? Function()? gettingUserModel,
    TResult? Function()? gettingUserStats,
    TResult? Function()? complete,
  }) {
    return complete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error, StackTrace stackTrace)? gotFatalError,
    TResult Function()? gettingUserModel,
    TResult Function()? gettingUserStats,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotFatalError value) gotFatalError,
    required TResult Function(GettingUserModel value) gettingUserModel,
    required TResult Function(GettingUserStats value) gettingUserStats,
    required TResult Function(InitialBindingComplete value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotFatalError value)? gotFatalError,
    TResult? Function(GettingUserModel value)? gettingUserModel,
    TResult? Function(GettingUserStats value)? gettingUserStats,
    TResult? Function(InitialBindingComplete value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotFatalError value)? gotFatalError,
    TResult Function(GettingUserModel value)? gettingUserModel,
    TResult Function(GettingUserStats value)? gettingUserStats,
    TResult Function(InitialBindingComplete value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class InitialBindingComplete implements InitialBindingState {
  factory InitialBindingComplete() = _$InitialBindingCompleteImpl;
}
