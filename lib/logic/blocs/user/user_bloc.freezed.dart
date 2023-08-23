// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noneUser,
    required TResult Function(UserModel user) logedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noneUser,
    TResult? Function(UserModel user)? logedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noneUser,
    TResult Function(UserModel user)? logedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoneUser value) noneUser,
    required TResult Function(_LogedIn value) logedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoneUser value)? noneUser,
    TResult? Function(_LogedIn value)? logedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoneUser value)? noneUser,
    TResult Function(_LogedIn value)? logedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noneUser,
    required TResult Function(UserModel user) logedIn,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noneUser,
    TResult? Function(UserModel user)? logedIn,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
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
    required TResult Function(_NoneUser value) noneUser,
    required TResult Function(_LogedIn value) logedIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoneUser value)? noneUser,
    TResult? Function(_LogedIn value)? logedIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
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

abstract class _Loading implements UserState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_NoneUserCopyWith<$Res> {
  factory _$$_NoneUserCopyWith(
          _$_NoneUser value, $Res Function(_$_NoneUser) then) =
      __$$_NoneUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoneUserCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_NoneUser>
    implements _$$_NoneUserCopyWith<$Res> {
  __$$_NoneUserCopyWithImpl(
      _$_NoneUser _value, $Res Function(_$_NoneUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoneUser implements _NoneUser {
  const _$_NoneUser();

  @override
  String toString() {
    return 'UserState.noneUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoneUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noneUser,
    required TResult Function(UserModel user) logedIn,
  }) {
    return noneUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noneUser,
    TResult? Function(UserModel user)? logedIn,
  }) {
    return noneUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
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
    required TResult Function(_NoneUser value) noneUser,
    required TResult Function(_LogedIn value) logedIn,
  }) {
    return noneUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoneUser value)? noneUser,
    TResult? Function(_LogedIn value)? logedIn,
  }) {
    return noneUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
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

abstract class _NoneUser implements UserState {
  const factory _NoneUser() = _$_NoneUser;
}

/// @nodoc
abstract class _$$_LogedInCopyWith<$Res> {
  factory _$$_LogedInCopyWith(
          _$_LogedIn value, $Res Function(_$_LogedIn) then) =
      __$$_LogedInCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$_LogedInCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_LogedIn>
    implements _$$_LogedInCopyWith<$Res> {
  __$$_LogedInCopyWithImpl(_$_LogedIn _value, $Res Function(_$_LogedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_LogedIn(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_LogedIn implements _LogedIn {
  const _$_LogedIn({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UserState.logedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogedIn &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogedInCopyWith<_$_LogedIn> get copyWith =>
      __$$_LogedInCopyWithImpl<_$_LogedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noneUser,
    required TResult Function(UserModel user) logedIn,
  }) {
    return logedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noneUser,
    TResult? Function(UserModel user)? logedIn,
  }) {
    return logedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
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
    required TResult Function(_NoneUser value) noneUser,
    required TResult Function(_LogedIn value) logedIn,
  }) {
    return logedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoneUser value)? noneUser,
    TResult? Function(_LogedIn value)? logedIn,
  }) {
    return logedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
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

abstract class _LogedIn implements UserState {
  const factory _LogedIn({required final UserModel user}) = _$_LogedIn;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$_LogedInCopyWith<_$_LogedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserEvent {
  UserModel? get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? user) setUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? user)? setUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? user)? setUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUser value) setUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUser value)? setUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUser value)? setUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEventCopyWith<UserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
  @useResult
  $Res call({UserModel? user});
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetUserCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$$_SetUserCopyWith(
          _$_SetUser value, $Res Function(_$_SetUser) then) =
      __$$_SetUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? user});
}

/// @nodoc
class __$$_SetUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_SetUser>
    implements _$$_SetUserCopyWith<$Res> {
  __$$_SetUserCopyWithImpl(_$_SetUser _value, $Res Function(_$_SetUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_SetUser(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$_SetUser implements _SetUser {
  const _$_SetUser({required this.user});

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'UserEvent.setUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetUserCopyWith<_$_SetUser> get copyWith =>
      __$$_SetUserCopyWithImpl<_$_SetUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? user) setUser,
  }) {
    return setUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? user)? setUser,
  }) {
    return setUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? user)? setUser,
    required TResult orElse(),
  }) {
    if (setUser != null) {
      return setUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUser value) setUser,
  }) {
    return setUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUser value)? setUser,
  }) {
    return setUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUser value)? setUser,
    required TResult orElse(),
  }) {
    if (setUser != null) {
      return setUser(this);
    }
    return orElse();
  }
}

abstract class _SetUser implements UserEvent {
  const factory _SetUser({required final UserModel? user}) = _$_SetUser;

  @override
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_SetUserCopyWith<_$_SetUser> get copyWith =>
      throw _privateConstructorUsedError;
}
