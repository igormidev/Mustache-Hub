// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_possibilities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationPossibilitiesState {
  List<ENavigationPossibilities> get possibilities =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ENavigationPossibilities> possibilities)
        loggedIn,
    required TResult Function(List<ENavigationPossibilities> possibilities)
        loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ENavigationPossibilities> possibilities)? loggedIn,
    TResult? Function(List<ENavigationPossibilities> possibilities)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ENavigationPossibilities> possibilities)? loggedIn,
    TResult Function(List<ENavigationPossibilities> possibilities)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationPossibilitiesStateCopyWith<NavigationPossibilitiesState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationPossibilitiesStateCopyWith<$Res> {
  factory $NavigationPossibilitiesStateCopyWith(
          NavigationPossibilitiesState value,
          $Res Function(NavigationPossibilitiesState) then) =
      _$NavigationPossibilitiesStateCopyWithImpl<$Res,
          NavigationPossibilitiesState>;
  @useResult
  $Res call({List<ENavigationPossibilities> possibilities});
}

/// @nodoc
class _$NavigationPossibilitiesStateCopyWithImpl<$Res,
        $Val extends NavigationPossibilitiesState>
    implements $NavigationPossibilitiesStateCopyWith<$Res> {
  _$NavigationPossibilitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? possibilities = null,
  }) {
    return _then(_value.copyWith(
      possibilities: null == possibilities
          ? _value.possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<ENavigationPossibilities>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoggedInCopyWith<$Res>
    implements $NavigationPossibilitiesStateCopyWith<$Res> {
  factory _$$LoggedInCopyWith(
          _$LoggedIn value, $Res Function(_$LoggedIn) then) =
      __$$LoggedInCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ENavigationPossibilities> possibilities});
}

/// @nodoc
class __$$LoggedInCopyWithImpl<$Res>
    extends _$NavigationPossibilitiesStateCopyWithImpl<$Res, _$LoggedIn>
    implements _$$LoggedInCopyWith<$Res> {
  __$$LoggedInCopyWithImpl(_$LoggedIn _value, $Res Function(_$LoggedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? possibilities = null,
  }) {
    return _then(_$LoggedIn(
      null == possibilities
          ? _value._possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<ENavigationPossibilities>,
    ));
  }
}

/// @nodoc

class _$LoggedIn implements LoggedIn {
  _$LoggedIn(
      [final List<ENavigationPossibilities> possibilities = const [
        ENavigationPossibilities.collection,
        ENavigationPossibilities.find,
        ENavigationPossibilities.generateText,
        ENavigationPossibilities.createMustache,
        ENavigationPossibilities.account,
        ENavigationPossibilities.becamePremium,
        ENavigationPossibilities.settings
      ]])
      : _possibilities = possibilities;

  final List<ENavigationPossibilities> _possibilities;
  @override
  @JsonKey()
  List<ENavigationPossibilities> get possibilities {
    if (_possibilities is EqualUnmodifiableListView) return _possibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_possibilities);
  }

  @override
  String toString() {
    return 'NavigationPossibilitiesState.loggedIn(possibilities: $possibilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedIn &&
            const DeepCollectionEquality()
                .equals(other._possibilities, _possibilities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_possibilities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInCopyWith<_$LoggedIn> get copyWith =>
      __$$LoggedInCopyWithImpl<_$LoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ENavigationPossibilities> possibilities)
        loggedIn,
    required TResult Function(List<ENavigationPossibilities> possibilities)
        loggedOut,
  }) {
    return loggedIn(possibilities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ENavigationPossibilities> possibilities)? loggedIn,
    TResult? Function(List<ENavigationPossibilities> possibilities)? loggedOut,
  }) {
    return loggedIn?.call(possibilities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ENavigationPossibilities> possibilities)? loggedIn,
    TResult Function(List<ENavigationPossibilities> possibilities)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(possibilities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements NavigationPossibilitiesState {
  factory LoggedIn([final List<ENavigationPossibilities> possibilities]) =
      _$LoggedIn;

  @override
  List<ENavigationPossibilities> get possibilities;
  @override
  @JsonKey(ignore: true)
  _$$LoggedInCopyWith<_$LoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedOutCopyWith<$Res>
    implements $NavigationPossibilitiesStateCopyWith<$Res> {
  factory _$$LoggedOutCopyWith(
          _$LoggedOut value, $Res Function(_$LoggedOut) then) =
      __$$LoggedOutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ENavigationPossibilities> possibilities});
}

/// @nodoc
class __$$LoggedOutCopyWithImpl<$Res>
    extends _$NavigationPossibilitiesStateCopyWithImpl<$Res, _$LoggedOut>
    implements _$$LoggedOutCopyWith<$Res> {
  __$$LoggedOutCopyWithImpl(
      _$LoggedOut _value, $Res Function(_$LoggedOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? possibilities = null,
  }) {
    return _then(_$LoggedOut(
      null == possibilities
          ? _value._possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<ENavigationPossibilities>,
    ));
  }
}

/// @nodoc

class _$LoggedOut implements LoggedOut {
  _$LoggedOut(
      [final List<ENavigationPossibilities> possibilities = const [
        ENavigationPossibilities.collection,
        ENavigationPossibilities.find,
        ENavigationPossibilities.generateText,
        ENavigationPossibilities.createMustache,
        ENavigationPossibilities.login,
        ENavigationPossibilities.settings
      ]])
      : _possibilities = possibilities;

  final List<ENavigationPossibilities> _possibilities;
  @override
  @JsonKey()
  List<ENavigationPossibilities> get possibilities {
    if (_possibilities is EqualUnmodifiableListView) return _possibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_possibilities);
  }

  @override
  String toString() {
    return 'NavigationPossibilitiesState.loggedOut(possibilities: $possibilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedOut &&
            const DeepCollectionEquality()
                .equals(other._possibilities, _possibilities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_possibilities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedOutCopyWith<_$LoggedOut> get copyWith =>
      __$$LoggedOutCopyWithImpl<_$LoggedOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ENavigationPossibilities> possibilities)
        loggedIn,
    required TResult Function(List<ENavigationPossibilities> possibilities)
        loggedOut,
  }) {
    return loggedOut(possibilities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ENavigationPossibilities> possibilities)? loggedIn,
    TResult? Function(List<ENavigationPossibilities> possibilities)? loggedOut,
  }) {
    return loggedOut?.call(possibilities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ENavigationPossibilities> possibilities)? loggedIn,
    TResult Function(List<ENavigationPossibilities> possibilities)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(possibilities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class LoggedOut implements NavigationPossibilitiesState {
  factory LoggedOut([final List<ENavigationPossibilities> possibilities]) =
      _$LoggedOut;

  @override
  List<ENavigationPossibilities> get possibilities;
  @override
  @JsonKey(ignore: true)
  _$$LoggedOutCopyWith<_$LoggedOut> get copyWith =>
      throw _privateConstructorUsedError;
}
