// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payload_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PayloadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpectedPayloadDto expectedPayloadDto)
        withRequiredFieldsPendency,
    required TResult Function(ExpectedPayloadDto expectedPayloadDto)
        withValidPayload,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpectedPayloadDto expectedPayloadDto)?
        withRequiredFieldsPendency,
    TResult? Function(ExpectedPayloadDto expectedPayloadDto)? withValidPayload,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpectedPayloadDto expectedPayloadDto)?
        withRequiredFieldsPendency,
    TResult Function(ExpectedPayloadDto expectedPayloadDto)? withValidPayload,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WithRequiredFieldsPendency value)
        withRequiredFieldsPendency,
    required TResult Function(WithValidPayload value) withValidPayload,
    required TResult Function(InitialPayloadState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WithRequiredFieldsPendency value)?
        withRequiredFieldsPendency,
    TResult? Function(WithValidPayload value)? withValidPayload,
    TResult? Function(InitialPayloadState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WithRequiredFieldsPendency value)?
        withRequiredFieldsPendency,
    TResult Function(WithValidPayload value)? withValidPayload,
    TResult Function(InitialPayloadState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadStateCopyWith<$Res> {
  factory $PayloadStateCopyWith(
          PayloadState value, $Res Function(PayloadState) then) =
      _$PayloadStateCopyWithImpl<$Res, PayloadState>;
}

/// @nodoc
class _$PayloadStateCopyWithImpl<$Res, $Val extends PayloadState>
    implements $PayloadStateCopyWith<$Res> {
  _$PayloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WithRequiredFieldsPendencyCopyWith<$Res> {
  factory _$$WithRequiredFieldsPendencyCopyWith(
          _$WithRequiredFieldsPendency value,
          $Res Function(_$WithRequiredFieldsPendency) then) =
      __$$WithRequiredFieldsPendencyCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpectedPayloadDto expectedPayloadDto});
}

/// @nodoc
class __$$WithRequiredFieldsPendencyCopyWithImpl<$Res>
    extends _$PayloadStateCopyWithImpl<$Res, _$WithRequiredFieldsPendency>
    implements _$$WithRequiredFieldsPendencyCopyWith<$Res> {
  __$$WithRequiredFieldsPendencyCopyWithImpl(
      _$WithRequiredFieldsPendency _value,
      $Res Function(_$WithRequiredFieldsPendency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expectedPayloadDto = null,
  }) {
    return _then(_$WithRequiredFieldsPendency(
      expectedPayloadDto: null == expectedPayloadDto
          ? _value.expectedPayloadDto
          : expectedPayloadDto // ignore: cast_nullable_to_non_nullable
              as ExpectedPayloadDto,
    ));
  }
}

/// @nodoc

class _$WithRequiredFieldsPendency implements WithRequiredFieldsPendency {
  _$WithRequiredFieldsPendency({required this.expectedPayloadDto});

  @override
  final ExpectedPayloadDto expectedPayloadDto;

  @override
  String toString() {
    return 'PayloadState.withRequiredFieldsPendency(expectedPayloadDto: $expectedPayloadDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithRequiredFieldsPendency &&
            (identical(other.expectedPayloadDto, expectedPayloadDto) ||
                other.expectedPayloadDto == expectedPayloadDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expectedPayloadDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithRequiredFieldsPendencyCopyWith<_$WithRequiredFieldsPendency>
      get copyWith => __$$WithRequiredFieldsPendencyCopyWithImpl<
          _$WithRequiredFieldsPendency>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpectedPayloadDto expectedPayloadDto)
        withRequiredFieldsPendency,
    required TResult Function(ExpectedPayloadDto expectedPayloadDto)
        withValidPayload,
    required TResult Function() initial,
  }) {
    return withRequiredFieldsPendency(expectedPayloadDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpectedPayloadDto expectedPayloadDto)?
        withRequiredFieldsPendency,
    TResult? Function(ExpectedPayloadDto expectedPayloadDto)? withValidPayload,
    TResult? Function()? initial,
  }) {
    return withRequiredFieldsPendency?.call(expectedPayloadDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpectedPayloadDto expectedPayloadDto)?
        withRequiredFieldsPendency,
    TResult Function(ExpectedPayloadDto expectedPayloadDto)? withValidPayload,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (withRequiredFieldsPendency != null) {
      return withRequiredFieldsPendency(expectedPayloadDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WithRequiredFieldsPendency value)
        withRequiredFieldsPendency,
    required TResult Function(WithValidPayload value) withValidPayload,
    required TResult Function(InitialPayloadState value) initial,
  }) {
    return withRequiredFieldsPendency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WithRequiredFieldsPendency value)?
        withRequiredFieldsPendency,
    TResult? Function(WithValidPayload value)? withValidPayload,
    TResult? Function(InitialPayloadState value)? initial,
  }) {
    return withRequiredFieldsPendency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WithRequiredFieldsPendency value)?
        withRequiredFieldsPendency,
    TResult Function(WithValidPayload value)? withValidPayload,
    TResult Function(InitialPayloadState value)? initial,
    required TResult orElse(),
  }) {
    if (withRequiredFieldsPendency != null) {
      return withRequiredFieldsPendency(this);
    }
    return orElse();
  }
}

abstract class WithRequiredFieldsPendency implements PayloadState {
  factory WithRequiredFieldsPendency(
          {required final ExpectedPayloadDto expectedPayloadDto}) =
      _$WithRequiredFieldsPendency;

  ExpectedPayloadDto get expectedPayloadDto;
  @JsonKey(ignore: true)
  _$$WithRequiredFieldsPendencyCopyWith<_$WithRequiredFieldsPendency>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WithValidPayloadCopyWith<$Res> {
  factory _$$WithValidPayloadCopyWith(
          _$WithValidPayload value, $Res Function(_$WithValidPayload) then) =
      __$$WithValidPayloadCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpectedPayloadDto expectedPayloadDto});
}

/// @nodoc
class __$$WithValidPayloadCopyWithImpl<$Res>
    extends _$PayloadStateCopyWithImpl<$Res, _$WithValidPayload>
    implements _$$WithValidPayloadCopyWith<$Res> {
  __$$WithValidPayloadCopyWithImpl(
      _$WithValidPayload _value, $Res Function(_$WithValidPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expectedPayloadDto = null,
  }) {
    return _then(_$WithValidPayload(
      expectedPayloadDto: null == expectedPayloadDto
          ? _value.expectedPayloadDto
          : expectedPayloadDto // ignore: cast_nullable_to_non_nullable
              as ExpectedPayloadDto,
    ));
  }
}

/// @nodoc

class _$WithValidPayload implements WithValidPayload {
  _$WithValidPayload({required this.expectedPayloadDto});

  @override
  final ExpectedPayloadDto expectedPayloadDto;

  @override
  String toString() {
    return 'PayloadState.withValidPayload(expectedPayloadDto: $expectedPayloadDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithValidPayload &&
            (identical(other.expectedPayloadDto, expectedPayloadDto) ||
                other.expectedPayloadDto == expectedPayloadDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expectedPayloadDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithValidPayloadCopyWith<_$WithValidPayload> get copyWith =>
      __$$WithValidPayloadCopyWithImpl<_$WithValidPayload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpectedPayloadDto expectedPayloadDto)
        withRequiredFieldsPendency,
    required TResult Function(ExpectedPayloadDto expectedPayloadDto)
        withValidPayload,
    required TResult Function() initial,
  }) {
    return withValidPayload(expectedPayloadDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpectedPayloadDto expectedPayloadDto)?
        withRequiredFieldsPendency,
    TResult? Function(ExpectedPayloadDto expectedPayloadDto)? withValidPayload,
    TResult? Function()? initial,
  }) {
    return withValidPayload?.call(expectedPayloadDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpectedPayloadDto expectedPayloadDto)?
        withRequiredFieldsPendency,
    TResult Function(ExpectedPayloadDto expectedPayloadDto)? withValidPayload,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (withValidPayload != null) {
      return withValidPayload(expectedPayloadDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WithRequiredFieldsPendency value)
        withRequiredFieldsPendency,
    required TResult Function(WithValidPayload value) withValidPayload,
    required TResult Function(InitialPayloadState value) initial,
  }) {
    return withValidPayload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WithRequiredFieldsPendency value)?
        withRequiredFieldsPendency,
    TResult? Function(WithValidPayload value)? withValidPayload,
    TResult? Function(InitialPayloadState value)? initial,
  }) {
    return withValidPayload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WithRequiredFieldsPendency value)?
        withRequiredFieldsPendency,
    TResult Function(WithValidPayload value)? withValidPayload,
    TResult Function(InitialPayloadState value)? initial,
    required TResult orElse(),
  }) {
    if (withValidPayload != null) {
      return withValidPayload(this);
    }
    return orElse();
  }
}

abstract class WithValidPayload implements PayloadState {
  factory WithValidPayload(
          {required final ExpectedPayloadDto expectedPayloadDto}) =
      _$WithValidPayload;

  ExpectedPayloadDto get expectedPayloadDto;
  @JsonKey(ignore: true)
  _$$WithValidPayloadCopyWith<_$WithValidPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialPayloadStateCopyWith<$Res> {
  factory _$$InitialPayloadStateCopyWith(_$InitialPayloadState value,
          $Res Function(_$InitialPayloadState) then) =
      __$$InitialPayloadStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialPayloadStateCopyWithImpl<$Res>
    extends _$PayloadStateCopyWithImpl<$Res, _$InitialPayloadState>
    implements _$$InitialPayloadStateCopyWith<$Res> {
  __$$InitialPayloadStateCopyWithImpl(
      _$InitialPayloadState _value, $Res Function(_$InitialPayloadState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialPayloadState implements InitialPayloadState {
  _$InitialPayloadState();

  @override
  String toString() {
    return 'PayloadState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialPayloadState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpectedPayloadDto expectedPayloadDto)
        withRequiredFieldsPendency,
    required TResult Function(ExpectedPayloadDto expectedPayloadDto)
        withValidPayload,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpectedPayloadDto expectedPayloadDto)?
        withRequiredFieldsPendency,
    TResult? Function(ExpectedPayloadDto expectedPayloadDto)? withValidPayload,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpectedPayloadDto expectedPayloadDto)?
        withRequiredFieldsPendency,
    TResult Function(ExpectedPayloadDto expectedPayloadDto)? withValidPayload,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WithRequiredFieldsPendency value)
        withRequiredFieldsPendency,
    required TResult Function(WithValidPayload value) withValidPayload,
    required TResult Function(InitialPayloadState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WithRequiredFieldsPendency value)?
        withRequiredFieldsPendency,
    TResult? Function(WithValidPayload value)? withValidPayload,
    TResult? Function(InitialPayloadState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WithRequiredFieldsPendency value)?
        withRequiredFieldsPendency,
    TResult Function(WithValidPayload value)? withValidPayload,
    TResult Function(InitialPayloadState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialPayloadState implements PayloadState {
  factory InitialPayloadState() = _$InitialPayloadState;
}
