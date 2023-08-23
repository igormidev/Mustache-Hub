// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
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
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$_Normal>
    implements _$$_NormalCopyWith<$Res> {
  __$$_NormalCopyWithImpl(_$_Normal _value, $Res Function(_$_Normal) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Normal implements _Normal {
  const _$_Normal();

  @override
  String toString() {
    return 'AuthState.normal()';
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

abstract class _Normal implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'AuthState.loading()';
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

abstract class _LoadInProgress implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$_WithError>
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
    return 'AuthState.error(error: $error)';
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

abstract class _WithError implements AuthState {
  const factory _WithError({required final CustomException error}) =
      _$_WithError;

  CustomException get error;
  @JsonKey(ignore: true)
  _$$_WithErrorCopyWith<_$_WithError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password)
        createUserWithCredentials,
    required TResult Function(EAuthIntegrations choosedIntegration)
        createUserWithIntegration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password)?
        createUserWithCredentials,
    TResult? Function(EAuthIntegrations choosedIntegration)?
        createUserWithIntegration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password)?
        createUserWithCredentials,
    TResult Function(EAuthIntegrations choosedIntegration)?
        createUserWithIntegration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUserWithCredentials,
    required TResult Function(_CreateUserWithIntegration value)
        createUserWithIntegration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUserWithCredentials,
    TResult? Function(_CreateUserWithIntegration value)?
        createUserWithIntegration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUserWithCredentials,
    TResult Function(_CreateUserWithIntegration value)?
        createUserWithIntegration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreateUserCopyWith<$Res> {
  factory _$$_CreateUserCopyWith(
          _$_CreateUser value, $Res Function(_$_CreateUser) then) =
      __$$_CreateUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$$_CreateUserCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CreateUser>
    implements _$$_CreateUserCopyWith<$Res> {
  __$$_CreateUserCopyWithImpl(
      _$_CreateUser _value, $Res Function(_$_CreateUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_CreateUser(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_CreateUser implements _CreateUser {
  const _$_CreateUser(
      {required this.name, required this.email, required this.password});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.createUserWithCredentials(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUser &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateUserCopyWith<_$_CreateUser> get copyWith =>
      __$$_CreateUserCopyWithImpl<_$_CreateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password)
        createUserWithCredentials,
    required TResult Function(EAuthIntegrations choosedIntegration)
        createUserWithIntegration,
  }) {
    return createUserWithCredentials(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password)?
        createUserWithCredentials,
    TResult? Function(EAuthIntegrations choosedIntegration)?
        createUserWithIntegration,
  }) {
    return createUserWithCredentials?.call(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password)?
        createUserWithCredentials,
    TResult Function(EAuthIntegrations choosedIntegration)?
        createUserWithIntegration,
    required TResult orElse(),
  }) {
    if (createUserWithCredentials != null) {
      return createUserWithCredentials(name, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUserWithCredentials,
    required TResult Function(_CreateUserWithIntegration value)
        createUserWithIntegration,
  }) {
    return createUserWithCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUserWithCredentials,
    TResult? Function(_CreateUserWithIntegration value)?
        createUserWithIntegration,
  }) {
    return createUserWithCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUserWithCredentials,
    TResult Function(_CreateUserWithIntegration value)?
        createUserWithIntegration,
    required TResult orElse(),
  }) {
    if (createUserWithCredentials != null) {
      return createUserWithCredentials(this);
    }
    return orElse();
  }
}

abstract class _CreateUser implements AuthEvent {
  const factory _CreateUser(
      {required final String name,
      required final String email,
      required final String password}) = _$_CreateUser;

  String get name;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_CreateUserCopyWith<_$_CreateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateUserWithIntegrationCopyWith<$Res> {
  factory _$$_CreateUserWithIntegrationCopyWith(
          _$_CreateUserWithIntegration value,
          $Res Function(_$_CreateUserWithIntegration) then) =
      __$$_CreateUserWithIntegrationCopyWithImpl<$Res>;
  @useResult
  $Res call({EAuthIntegrations choosedIntegration});
}

/// @nodoc
class __$$_CreateUserWithIntegrationCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CreateUserWithIntegration>
    implements _$$_CreateUserWithIntegrationCopyWith<$Res> {
  __$$_CreateUserWithIntegrationCopyWithImpl(
      _$_CreateUserWithIntegration _value,
      $Res Function(_$_CreateUserWithIntegration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choosedIntegration = null,
  }) {
    return _then(_$_CreateUserWithIntegration(
      choosedIntegration: null == choosedIntegration
          ? _value.choosedIntegration
          : choosedIntegration // ignore: cast_nullable_to_non_nullable
              as EAuthIntegrations,
    ));
  }
}

/// @nodoc

class _$_CreateUserWithIntegration implements _CreateUserWithIntegration {
  const _$_CreateUserWithIntegration({required this.choosedIntegration});

  @override
  final EAuthIntegrations choosedIntegration;

  @override
  String toString() {
    return 'AuthEvent.createUserWithIntegration(choosedIntegration: $choosedIntegration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUserWithIntegration &&
            (identical(other.choosedIntegration, choosedIntegration) ||
                other.choosedIntegration == choosedIntegration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, choosedIntegration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateUserWithIntegrationCopyWith<_$_CreateUserWithIntegration>
      get copyWith => __$$_CreateUserWithIntegrationCopyWithImpl<
          _$_CreateUserWithIntegration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password)
        createUserWithCredentials,
    required TResult Function(EAuthIntegrations choosedIntegration)
        createUserWithIntegration,
  }) {
    return createUserWithIntegration(choosedIntegration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password)?
        createUserWithCredentials,
    TResult? Function(EAuthIntegrations choosedIntegration)?
        createUserWithIntegration,
  }) {
    return createUserWithIntegration?.call(choosedIntegration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password)?
        createUserWithCredentials,
    TResult Function(EAuthIntegrations choosedIntegration)?
        createUserWithIntegration,
    required TResult orElse(),
  }) {
    if (createUserWithIntegration != null) {
      return createUserWithIntegration(choosedIntegration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUserWithCredentials,
    required TResult Function(_CreateUserWithIntegration value)
        createUserWithIntegration,
  }) {
    return createUserWithIntegration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUserWithCredentials,
    TResult? Function(_CreateUserWithIntegration value)?
        createUserWithIntegration,
  }) {
    return createUserWithIntegration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUserWithCredentials,
    TResult Function(_CreateUserWithIntegration value)?
        createUserWithIntegration,
    required TResult orElse(),
  }) {
    if (createUserWithIntegration != null) {
      return createUserWithIntegration(this);
    }
    return orElse();
  }
}

abstract class _CreateUserWithIntegration implements AuthEvent {
  const factory _CreateUserWithIntegration(
          {required final EAuthIntegrations choosedIntegration}) =
      _$_CreateUserWithIntegration;

  EAuthIntegrations get choosedIntegration;
  @JsonKey(ignore: true)
  _$$_CreateUserWithIntegrationCopyWith<_$_CreateUserWithIntegration>
      get copyWith => throw _privateConstructorUsedError;
}
