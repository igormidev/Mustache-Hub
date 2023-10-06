// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserModelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) withError,
    required TResult Function() noneUser,
    required TResult Function(UserModel user) logedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace stackTrace)? withError,
    TResult? Function()? noneUser,
    TResult? Function(UserModel user)? logedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? withError,
    TResult Function()? noneUser,
    TResult Function(UserModel user)? logedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Error value) withError,
    required TResult Function(_NoneUser value) noneUser,
    required TResult Function(_LogedIn value) logedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Error value)? withError,
    TResult? Function(_NoneUser value)? noneUser,
    TResult? Function(_LogedIn value)? logedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Error value)? withError,
    TResult Function(_NoneUser value)? noneUser,
    TResult Function(_LogedIn value)? logedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelStateCopyWith<$Res> {
  factory $UserModelStateCopyWith(
          UserModelState value, $Res Function(UserModelState) then) =
      _$UserModelStateCopyWithImpl<$Res, UserModelState>;
}

/// @nodoc
class _$UserModelStateCopyWithImpl<$Res, $Val extends UserModelState>
    implements $UserModelStateCopyWith<$Res> {
  _$UserModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserModelStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UserModelState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) withError,
    required TResult Function() noneUser,
    required TResult Function(UserModel user) logedIn,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace stackTrace)? withError,
    TResult? Function()? noneUser,
    TResult? Function(UserModel user)? logedIn,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? withError,
    TResult Function()? noneUser,
    TResult Function(UserModel user)? logedIn,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(Error value) withError,
    required TResult Function(_NoneUser value) noneUser,
    required TResult Function(_LogedIn value) logedIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Error value)? withError,
    TResult? Function(_NoneUser value)? noneUser,
    TResult? Function(_LogedIn value)? logedIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Error value)? withError,
    TResult Function(_NoneUser value)? noneUser,
    TResult Function(_LogedIn value)? logedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserModelState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UserModelStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error ? _value.error : error,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.error, required this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UserModelState.withError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
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
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) withError,
    required TResult Function() noneUser,
    required TResult Function(UserModel user) logedIn,
  }) {
    return withError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace stackTrace)? withError,
    TResult? Function()? noneUser,
    TResult? Function(UserModel user)? logedIn,
  }) {
    return withError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? withError,
    TResult Function()? noneUser,
    TResult Function(UserModel user)? logedIn,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(Error value) withError,
    required TResult Function(_NoneUser value) noneUser,
    required TResult Function(_LogedIn value) logedIn,
  }) {
    return withError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Error value)? withError,
    TResult? Function(_NoneUser value)? noneUser,
    TResult? Function(_LogedIn value)? logedIn,
  }) {
    return withError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Error value)? withError,
    TResult Function(_NoneUser value)? noneUser,
    TResult Function(_LogedIn value)? logedIn,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(this);
    }
    return orElse();
  }
}

abstract class Error implements UserModelState {
  const factory Error(
      {required final Object error,
      required final StackTrace stackTrace}) = _$ErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoneUserImplCopyWith<$Res> {
  factory _$$NoneUserImplCopyWith(
          _$NoneUserImpl value, $Res Function(_$NoneUserImpl) then) =
      __$$NoneUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneUserImplCopyWithImpl<$Res>
    extends _$UserModelStateCopyWithImpl<$Res, _$NoneUserImpl>
    implements _$$NoneUserImplCopyWith<$Res> {
  __$$NoneUserImplCopyWithImpl(
      _$NoneUserImpl _value, $Res Function(_$NoneUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneUserImpl implements _NoneUser {
  const _$NoneUserImpl();

  @override
  String toString() {
    return 'UserModelState.noneUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) withError,
    required TResult Function() noneUser,
    required TResult Function(UserModel user) logedIn,
  }) {
    return noneUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace stackTrace)? withError,
    TResult? Function()? noneUser,
    TResult? Function(UserModel user)? logedIn,
  }) {
    return noneUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? withError,
    TResult Function()? noneUser,
    TResult Function(UserModel user)? logedIn,
    required TResult orElse(),
  }) {
    if (noneUser != null) {
      return noneUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Error value) withError,
    required TResult Function(_NoneUser value) noneUser,
    required TResult Function(_LogedIn value) logedIn,
  }) {
    return noneUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Error value)? withError,
    TResult? Function(_NoneUser value)? noneUser,
    TResult? Function(_LogedIn value)? logedIn,
  }) {
    return noneUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Error value)? withError,
    TResult Function(_NoneUser value)? noneUser,
    TResult Function(_LogedIn value)? logedIn,
    required TResult orElse(),
  }) {
    if (noneUser != null) {
      return noneUser(this);
    }
    return orElse();
  }
}

abstract class _NoneUser implements UserModelState {
  const factory _NoneUser() = _$NoneUserImpl;
}

/// @nodoc
abstract class _$$LogedInImplCopyWith<$Res> {
  factory _$$LogedInImplCopyWith(
          _$LogedInImpl value, $Res Function(_$LogedInImpl) then) =
      __$$LogedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$LogedInImplCopyWithImpl<$Res>
    extends _$UserModelStateCopyWithImpl<$Res, _$LogedInImpl>
    implements _$$LogedInImplCopyWith<$Res> {
  __$$LogedInImplCopyWithImpl(
      _$LogedInImpl _value, $Res Function(_$LogedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LogedInImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$LogedInImpl implements _LogedIn {
  const _$LogedInImpl({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UserModelState.logedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogedInImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogedInImplCopyWith<_$LogedInImpl> get copyWith =>
      __$$LogedInImplCopyWithImpl<_$LogedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) withError,
    required TResult Function() noneUser,
    required TResult Function(UserModel user) logedIn,
  }) {
    return logedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace stackTrace)? withError,
    TResult? Function()? noneUser,
    TResult? Function(UserModel user)? logedIn,
  }) {
    return logedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? withError,
    TResult Function()? noneUser,
    TResult Function(UserModel user)? logedIn,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Error value) withError,
    required TResult Function(_NoneUser value) noneUser,
    required TResult Function(_LogedIn value) logedIn,
  }) {
    return logedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Error value)? withError,
    TResult? Function(_NoneUser value)? noneUser,
    TResult? Function(_LogedIn value)? logedIn,
  }) {
    return logedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Error value)? withError,
    TResult Function(_NoneUser value)? noneUser,
    TResult Function(_LogedIn value)? logedIn,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(this);
    }
    return orElse();
  }
}

abstract class _LogedIn implements UserModelState {
  const factory _LogedIn({required final UserModel user}) = _$LogedInImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$LogedInImplCopyWith<_$LogedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
