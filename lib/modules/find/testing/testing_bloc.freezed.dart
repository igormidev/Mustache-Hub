// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'testing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestingState _$TestingStateFromJson(Map<String, dynamic> json) {
  return _Normal.fromJson(json);
}

/// @nodoc
mixin _$TestingState {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Normal value) normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestingStateCopyWith<TestingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestingStateCopyWith<$Res> {
  factory $TestingStateCopyWith(
          TestingState value, $Res Function(TestingState) then) =
      _$TestingStateCopyWithImpl<$Res, TestingState>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$TestingStateCopyWithImpl<$Res, $Val extends TestingState>
    implements $TestingStateCopyWith<$Res> {
  _$TestingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NormalCopyWith<$Res> implements $TestingStateCopyWith<$Res> {
  factory _$$_NormalCopyWith(_$_Normal value, $Res Function(_$_Normal) then) =
      __$$_NormalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_NormalCopyWithImpl<$Res>
    extends _$TestingStateCopyWithImpl<$Res, _$_Normal>
    implements _$$_NormalCopyWith<$Res> {
  __$$_NormalCopyWithImpl(_$_Normal _value, $Res Function(_$_Normal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_Normal(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Normal implements _Normal {
  const _$_Normal({required this.id});

  factory _$_Normal.fromJson(Map<String, dynamic> json) =>
      _$$_NormalFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'TestingState.normal(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Normal &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NormalCopyWith<_$_Normal> get copyWith =>
      __$$_NormalCopyWithImpl<_$_Normal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) normal,
  }) {
    return normal(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? normal,
  }) {
    return normal?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Normal value) normal,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NormalToJson(
      this,
    );
  }
}

abstract class _Normal implements TestingState {
  const factory _Normal({required final int id}) = _$_Normal;

  factory _Normal.fromJson(Map<String, dynamic> json) = _$_Normal.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_NormalCopyWith<_$_Normal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TestingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increase value) increase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Increase value)? increase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increase value)? increase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestingEventCopyWith<$Res> {
  factory $TestingEventCopyWith(
          TestingEvent value, $Res Function(TestingEvent) then) =
      _$TestingEventCopyWithImpl<$Res, TestingEvent>;
}

/// @nodoc
class _$TestingEventCopyWithImpl<$Res, $Val extends TestingEvent>
    implements $TestingEventCopyWith<$Res> {
  _$TestingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IncreaseCopyWith<$Res> {
  factory _$$_IncreaseCopyWith(
          _$_Increase value, $Res Function(_$_Increase) then) =
      __$$_IncreaseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncreaseCopyWithImpl<$Res>
    extends _$TestingEventCopyWithImpl<$Res, _$_Increase>
    implements _$$_IncreaseCopyWith<$Res> {
  __$$_IncreaseCopyWithImpl(
      _$_Increase _value, $Res Function(_$_Increase) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Increase implements _Increase {
  const _$_Increase();

  @override
  String toString() {
    return 'TestingEvent.increase()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Increase);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increase,
  }) {
    return increase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increase,
  }) {
    return increase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increase,
    required TResult orElse(),
  }) {
    if (increase != null) {
      return increase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increase value) increase,
  }) {
    return increase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Increase value)? increase,
  }) {
    return increase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increase value)? increase,
    required TResult orElse(),
  }) {
    if (increase != null) {
      return increase(this);
    }
    return orElse();
  }
}

abstract class _Increase implements TestingEvent {
  const factory _Increase() = _$_Increase;
}
