// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardPageState {
  int get pageIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) withPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageIndex)? withPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? withPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithPage value) withPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WithPage value)? withPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithPage value)? withPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardPageStateCopyWith<DashboardPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardPageStateCopyWith<$Res> {
  factory $DashboardPageStateCopyWith(
          DashboardPageState value, $Res Function(DashboardPageState) then) =
      _$DashboardPageStateCopyWithImpl<$Res, DashboardPageState>;
  @useResult
  $Res call({int pageIndex});
}

/// @nodoc
class _$DashboardPageStateCopyWithImpl<$Res, $Val extends DashboardPageState>
    implements $DashboardPageStateCopyWith<$Res> {
  _$DashboardPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
  }) {
    return _then(_value.copyWith(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WithPageCopyWith<$Res>
    implements $DashboardPageStateCopyWith<$Res> {
  factory _$$_WithPageCopyWith(
          _$_WithPage value, $Res Function(_$_WithPage) then) =
      __$$_WithPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageIndex});
}

/// @nodoc
class __$$_WithPageCopyWithImpl<$Res>
    extends _$DashboardPageStateCopyWithImpl<$Res, _$_WithPage>
    implements _$$_WithPageCopyWith<$Res> {
  __$$_WithPageCopyWithImpl(
      _$_WithPage _value, $Res Function(_$_WithPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
  }) {
    return _then(_$_WithPage(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WithPage implements _WithPage {
  const _$_WithPage({required this.pageIndex});

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'DashboardPageState.withPage(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithPage &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithPageCopyWith<_$_WithPage> get copyWith =>
      __$$_WithPageCopyWithImpl<_$_WithPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) withPage,
  }) {
    return withPage(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageIndex)? withPage,
  }) {
    return withPage?.call(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? withPage,
    required TResult orElse(),
  }) {
    if (withPage != null) {
      return withPage(pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithPage value) withPage,
  }) {
    return withPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WithPage value)? withPage,
  }) {
    return withPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithPage value)? withPage,
    required TResult orElse(),
  }) {
    if (withPage != null) {
      return withPage(this);
    }
    return orElse();
  }
}

abstract class _WithPage implements DashboardPageState {
  const factory _WithPage({required final int pageIndex}) = _$_WithPage;

  @override
  int get pageIndex;
  @override
  @JsonKey(ignore: true)
  _$$_WithPageCopyWith<_$_WithPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardPageEvent {
  int get pageIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) setPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageIndex)? setPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? setPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPage value) setPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPage value)? setPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPage value)? setPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardPageEventCopyWith<DashboardPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardPageEventCopyWith<$Res> {
  factory $DashboardPageEventCopyWith(
          DashboardPageEvent value, $Res Function(DashboardPageEvent) then) =
      _$DashboardPageEventCopyWithImpl<$Res, DashboardPageEvent>;
  @useResult
  $Res call({int pageIndex});
}

/// @nodoc
class _$DashboardPageEventCopyWithImpl<$Res, $Val extends DashboardPageEvent>
    implements $DashboardPageEventCopyWith<$Res> {
  _$DashboardPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
  }) {
    return _then(_value.copyWith(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetPageCopyWith<$Res>
    implements $DashboardPageEventCopyWith<$Res> {
  factory _$$_SetPageCopyWith(
          _$_SetPage value, $Res Function(_$_SetPage) then) =
      __$$_SetPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageIndex});
}

/// @nodoc
class __$$_SetPageCopyWithImpl<$Res>
    extends _$DashboardPageEventCopyWithImpl<$Res, _$_SetPage>
    implements _$$_SetPageCopyWith<$Res> {
  __$$_SetPageCopyWithImpl(_$_SetPage _value, $Res Function(_$_SetPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
  }) {
    return _then(_$_SetPage(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetPage implements _SetPage {
  const _$_SetPage({required this.pageIndex});

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'DashboardPageEvent.setPage(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetPage &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetPageCopyWith<_$_SetPage> get copyWith =>
      __$$_SetPageCopyWithImpl<_$_SetPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) setPage,
  }) {
    return setPage(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageIndex)? setPage,
  }) {
    return setPage?.call(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? setPage,
    required TResult orElse(),
  }) {
    if (setPage != null) {
      return setPage(pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPage value) setPage,
  }) {
    return setPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPage value)? setPage,
  }) {
    return setPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPage value)? setPage,
    required TResult orElse(),
  }) {
    if (setPage != null) {
      return setPage(this);
    }
    return orElse();
  }
}

abstract class _SetPage implements DashboardPageEvent {
  const factory _SetPage({required final int pageIndex}) = _$_SetPage;

  @override
  int get pageIndex;
  @override
  @JsonKey(ignore: true)
  _$$_SetPageCopyWith<_$_SetPage> get copyWith =>
      throw _privateConstructorUsedError;
}
