// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function() loading,
    required TResult Function(CustomException error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function()? loading,
    TResult? Function(CustomException error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function()? loading,
    TResult Function(CustomException error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Normal value) normal,
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_WithError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_WithError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_WithError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NormalCopyWith<$Res> {
  factory _$$_NormalCopyWith(_$_Normal value, $Res Function(_$_Normal) then) =
      __$$_NormalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NormalCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Normal>
    implements _$$_NormalCopyWith<$Res> {
  __$$_NormalCopyWithImpl(_$_Normal _value, $Res Function(_$_Normal) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Normal implements _Normal {
  const _$_Normal();

  @override
  String toString() {
    return 'LoginState.normal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Normal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function() loading,
    required TResult Function(CustomException error) error,
  }) {
    return normal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function()? loading,
    TResult? Function(CustomException error)? error,
  }) {
    return normal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function()? loading,
    TResult Function(CustomException error)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Normal value) normal,
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_WithError value) error,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_WithError value)? error,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_WithError value)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _Normal implements LoginState {
  const factory _Normal() = _$_Normal;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'LoginState.loading()';
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
    required TResult Function() normal,
    required TResult Function() loading,
    required TResult Function(CustomException error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function()? loading,
    TResult? Function(CustomException error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function()? loading,
    TResult Function(CustomException error)? error,
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
    required TResult Function(_Normal value) normal,
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_WithError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_WithError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_WithError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements LoginState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_WithErrorCopyWith<$Res> {
  factory _$$_WithErrorCopyWith(
          _$_WithError value, $Res Function(_$_WithError) then) =
      __$$_WithErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomException error});
}

/// @nodoc
class __$$_WithErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_WithError>
    implements _$$_WithErrorCopyWith<$Res> {
  __$$_WithErrorCopyWithImpl(
      _$_WithError _value, $Res Function(_$_WithError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_WithError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomException,
    ));
  }
}

/// @nodoc

class _$_WithError implements _WithError {
  const _$_WithError({required this.error});

  @override
  final CustomException error;

  @override
  String toString() {
    return 'LoginState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithErrorCopyWith<_$_WithError> get copyWith =>
      __$$_WithErrorCopyWithImpl<_$_WithError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function() loading,
    required TResult Function(CustomException error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function()? loading,
    TResult? Function(CustomException error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function()? loading,
    TResult Function(CustomException error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Normal value) normal,
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_WithError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_WithError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_WithError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WithError implements LoginState {
  const factory _WithError({required final CustomException error}) =
      _$_WithError;

  CustomException get error;
  @JsonKey(ignore: true)
  _$$_WithErrorCopyWith<_$_WithError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        logInUserWithCredentials,
    required TResult Function(EAuthIntegrations choosedIntegration)
        logInUserWithIntegration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logInUserWithCredentials,
    TResult? Function(EAuthIntegrations choosedIntegration)?
        logInUserWithIntegration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logInUserWithCredentials,
    TResult Function(EAuthIntegrations choosedIntegration)?
        logInUserWithIntegration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInUserWithCredential value)
        logInUserWithCredentials,
    required TResult Function(_LogInUserWithIntegration value)
        logInUserWithIntegration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInUserWithCredential value)? logInUserWithCredentials,
    TResult? Function(_LogInUserWithIntegration value)?
        logInUserWithIntegration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInUserWithCredential value)? logInUserWithCredentials,
    TResult Function(_LogInUserWithIntegration value)? logInUserWithIntegration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LogInUserWithCredentialCopyWith<$Res> {
  factory _$$_LogInUserWithCredentialCopyWith(_$_LogInUserWithCredential value,
          $Res Function(_$_LogInUserWithCredential) then) =
      __$$_LogInUserWithCredentialCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LogInUserWithCredentialCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LogInUserWithCredential>
    implements _$$_LogInUserWithCredentialCopyWith<$Res> {
  __$$_LogInUserWithCredentialCopyWithImpl(_$_LogInUserWithCredential _value,
      $Res Function(_$_LogInUserWithCredential) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LogInUserWithCredential(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LogInUserWithCredential implements _LogInUserWithCredential {
  const _$_LogInUserWithCredential(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.logInUserWithCredentials(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogInUserWithCredential &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogInUserWithCredentialCopyWith<_$_LogInUserWithCredential>
      get copyWith =>
          __$$_LogInUserWithCredentialCopyWithImpl<_$_LogInUserWithCredential>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        logInUserWithCredentials,
    required TResult Function(EAuthIntegrations choosedIntegration)
        logInUserWithIntegration,
  }) {
    return logInUserWithCredentials(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logInUserWithCredentials,
    TResult? Function(EAuthIntegrations choosedIntegration)?
        logInUserWithIntegration,
  }) {
    return logInUserWithCredentials?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logInUserWithCredentials,
    TResult Function(EAuthIntegrations choosedIntegration)?
        logInUserWithIntegration,
    required TResult orElse(),
  }) {
    if (logInUserWithCredentials != null) {
      return logInUserWithCredentials(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInUserWithCredential value)
        logInUserWithCredentials,
    required TResult Function(_LogInUserWithIntegration value)
        logInUserWithIntegration,
  }) {
    return logInUserWithCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInUserWithCredential value)? logInUserWithCredentials,
    TResult? Function(_LogInUserWithIntegration value)?
        logInUserWithIntegration,
  }) {
    return logInUserWithCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInUserWithCredential value)? logInUserWithCredentials,
    TResult Function(_LogInUserWithIntegration value)? logInUserWithIntegration,
    required TResult orElse(),
  }) {
    if (logInUserWithCredentials != null) {
      return logInUserWithCredentials(this);
    }
    return orElse();
  }
}

abstract class _LogInUserWithCredential implements LoginEvent {
  const factory _LogInUserWithCredential(
      {required final String email,
      required final String password}) = _$_LogInUserWithCredential;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LogInUserWithCredentialCopyWith<_$_LogInUserWithCredential>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogInUserWithIntegrationCopyWith<$Res> {
  factory _$$_LogInUserWithIntegrationCopyWith(
          _$_LogInUserWithIntegration value,
          $Res Function(_$_LogInUserWithIntegration) then) =
      __$$_LogInUserWithIntegrationCopyWithImpl<$Res>;
  @useResult
  $Res call({EAuthIntegrations choosedIntegration});
}

/// @nodoc
class __$$_LogInUserWithIntegrationCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LogInUserWithIntegration>
    implements _$$_LogInUserWithIntegrationCopyWith<$Res> {
  __$$_LogInUserWithIntegrationCopyWithImpl(_$_LogInUserWithIntegration _value,
      $Res Function(_$_LogInUserWithIntegration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choosedIntegration = null,
  }) {
    return _then(_$_LogInUserWithIntegration(
      choosedIntegration: null == choosedIntegration
          ? _value.choosedIntegration
          : choosedIntegration // ignore: cast_nullable_to_non_nullable
              as EAuthIntegrations,
    ));
  }
}

/// @nodoc

class _$_LogInUserWithIntegration implements _LogInUserWithIntegration {
  const _$_LogInUserWithIntegration({required this.choosedIntegration});

  @override
  final EAuthIntegrations choosedIntegration;

  @override
  String toString() {
    return 'LoginEvent.logInUserWithIntegration(choosedIntegration: $choosedIntegration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogInUserWithIntegration &&
            (identical(other.choosedIntegration, choosedIntegration) ||
                other.choosedIntegration == choosedIntegration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, choosedIntegration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogInUserWithIntegrationCopyWith<_$_LogInUserWithIntegration>
      get copyWith => __$$_LogInUserWithIntegrationCopyWithImpl<
          _$_LogInUserWithIntegration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        logInUserWithCredentials,
    required TResult Function(EAuthIntegrations choosedIntegration)
        logInUserWithIntegration,
  }) {
    return logInUserWithIntegration(choosedIntegration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logInUserWithCredentials,
    TResult? Function(EAuthIntegrations choosedIntegration)?
        logInUserWithIntegration,
  }) {
    return logInUserWithIntegration?.call(choosedIntegration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logInUserWithCredentials,
    TResult Function(EAuthIntegrations choosedIntegration)?
        logInUserWithIntegration,
    required TResult orElse(),
  }) {
    if (logInUserWithIntegration != null) {
      return logInUserWithIntegration(choosedIntegration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInUserWithCredential value)
        logInUserWithCredentials,
    required TResult Function(_LogInUserWithIntegration value)
        logInUserWithIntegration,
  }) {
    return logInUserWithIntegration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInUserWithCredential value)? logInUserWithCredentials,
    TResult? Function(_LogInUserWithIntegration value)?
        logInUserWithIntegration,
  }) {
    return logInUserWithIntegration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInUserWithCredential value)? logInUserWithCredentials,
    TResult Function(_LogInUserWithIntegration value)? logInUserWithIntegration,
    required TResult orElse(),
  }) {
    if (logInUserWithIntegration != null) {
      return logInUserWithIntegration(this);
    }
    return orElse();
  }
}

abstract class _LogInUserWithIntegration implements LoginEvent {
  const factory _LogInUserWithIntegration(
          {required final EAuthIntegrations choosedIntegration}) =
      _$_LogInUserWithIntegration;

  EAuthIntegrations get choosedIntegration;
  @JsonKey(ignore: true)
  _$$_LogInUserWithIntegrationCopyWith<_$_LogInUserWithIntegration>
      get copyWith => throw _privateConstructorUsedError;
}
