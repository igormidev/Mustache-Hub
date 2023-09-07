// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_text_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GenerateTextState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GenerateTextStateModel pipes) withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GenerateTextStateModel pipes)? withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GenerateTextStateModel pipes)? withData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WithData value) withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WithData value)? withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithData value)? withData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateTextStateCopyWith<$Res> {
  factory $GenerateTextStateCopyWith(
          GenerateTextState value, $Res Function(GenerateTextState) then) =
      _$GenerateTextStateCopyWithImpl<$Res, GenerateTextState>;
}

/// @nodoc
class _$GenerateTextStateCopyWithImpl<$Res, $Val extends GenerateTextState>
    implements $GenerateTextStateCopyWith<$Res> {
  _$GenerateTextStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$GenerateTextStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GenerateTextState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GenerateTextStateModel pipes) withData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GenerateTextStateModel pipes)? withData,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GenerateTextStateModel pipes)? withData,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_WithData value) withData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WithData value)? withData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithData value)? withData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GenerateTextState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_WithDataCopyWith<$Res> {
  factory _$$_WithDataCopyWith(
          _$_WithData value, $Res Function(_$_WithData) then) =
      __$$_WithDataCopyWithImpl<$Res>;
  @useResult
  $Res call({GenerateTextStateModel pipes});
}

/// @nodoc
class __$$_WithDataCopyWithImpl<$Res>
    extends _$GenerateTextStateCopyWithImpl<$Res, _$_WithData>
    implements _$$_WithDataCopyWith<$Res> {
  __$$_WithDataCopyWithImpl(
      _$_WithData _value, $Res Function(_$_WithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pipes = null,
  }) {
    return _then(_$_WithData(
      pipes: null == pipes
          ? _value.pipes
          : pipes // ignore: cast_nullable_to_non_nullable
              as GenerateTextStateModel,
    ));
  }
}

/// @nodoc

class _$_WithData implements _WithData {
  const _$_WithData({required this.pipes});

  @override
  final GenerateTextStateModel pipes;

  @override
  String toString() {
    return 'GenerateTextState.withData(pipes: $pipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithData &&
            (identical(other.pipes, pipes) || other.pipes == pipes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pipes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithDataCopyWith<_$_WithData> get copyWith =>
      __$$_WithDataCopyWithImpl<_$_WithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GenerateTextStateModel pipes) withData,
  }) {
    return withData(pipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GenerateTextStateModel pipes)? withData,
  }) {
    return withData?.call(pipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GenerateTextStateModel pipes)? withData,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(pipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WithData value) withData,
  }) {
    return withData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WithData value)? withData,
  }) {
    return withData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithData value)? withData,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(this);
    }
    return orElse();
  }
}

abstract class _WithData implements GenerateTextState {
  const factory _WithData({required final GenerateTextStateModel pipes}) =
      _$_WithData;

  GenerateTextStateModel get pipes;
  @JsonKey(ignore: true)
  _$$_WithDataCopyWith<_$_WithData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GenerateTextEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Template template) selectTemplate,
    required TResult Function(Pipe pipe, dynamic value) addPayloadValue,
    required TResult Function() unSelectTemplate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Template template)? selectTemplate,
    TResult? Function(Pipe pipe, dynamic value)? addPayloadValue,
    TResult? Function()? unSelectTemplate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Template template)? selectTemplate,
    TResult Function(Pipe pipe, dynamic value)? addPayloadValue,
    TResult Function()? unSelectTemplate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTemplate value) selectTemplate,
    required TResult Function(_AddPayloadValue value) addPayloadValue,
    required TResult Function(_UnSelectTemplate value) unSelectTemplate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTemplate value)? selectTemplate,
    TResult? Function(_AddPayloadValue value)? addPayloadValue,
    TResult? Function(_UnSelectTemplate value)? unSelectTemplate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTemplate value)? selectTemplate,
    TResult Function(_AddPayloadValue value)? addPayloadValue,
    TResult Function(_UnSelectTemplate value)? unSelectTemplate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateTextEventCopyWith<$Res> {
  factory $GenerateTextEventCopyWith(
          GenerateTextEvent value, $Res Function(GenerateTextEvent) then) =
      _$GenerateTextEventCopyWithImpl<$Res, GenerateTextEvent>;
}

/// @nodoc
class _$GenerateTextEventCopyWithImpl<$Res, $Val extends GenerateTextEvent>
    implements $GenerateTextEventCopyWith<$Res> {
  _$GenerateTextEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SelectTemplateCopyWith<$Res> {
  factory _$$_SelectTemplateCopyWith(
          _$_SelectTemplate value, $Res Function(_$_SelectTemplate) then) =
      __$$_SelectTemplateCopyWithImpl<$Res>;
  @useResult
  $Res call({Template template});
}

/// @nodoc
class __$$_SelectTemplateCopyWithImpl<$Res>
    extends _$GenerateTextEventCopyWithImpl<$Res, _$_SelectTemplate>
    implements _$$_SelectTemplateCopyWith<$Res> {
  __$$_SelectTemplateCopyWithImpl(
      _$_SelectTemplate _value, $Res Function(_$_SelectTemplate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? template = null,
  }) {
    return _then(_$_SelectTemplate(
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as Template,
    ));
  }
}

/// @nodoc

class _$_SelectTemplate implements _SelectTemplate {
  const _$_SelectTemplate({required this.template});

  @override
  final Template template;

  @override
  String toString() {
    return 'GenerateTextEvent.selectTemplate(template: $template)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectTemplate &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @override
  int get hashCode => Object.hash(runtimeType, template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectTemplateCopyWith<_$_SelectTemplate> get copyWith =>
      __$$_SelectTemplateCopyWithImpl<_$_SelectTemplate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Template template) selectTemplate,
    required TResult Function(Pipe pipe, dynamic value) addPayloadValue,
    required TResult Function() unSelectTemplate,
  }) {
    return selectTemplate(template);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Template template)? selectTemplate,
    TResult? Function(Pipe pipe, dynamic value)? addPayloadValue,
    TResult? Function()? unSelectTemplate,
  }) {
    return selectTemplate?.call(template);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Template template)? selectTemplate,
    TResult Function(Pipe pipe, dynamic value)? addPayloadValue,
    TResult Function()? unSelectTemplate,
    required TResult orElse(),
  }) {
    if (selectTemplate != null) {
      return selectTemplate(template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTemplate value) selectTemplate,
    required TResult Function(_AddPayloadValue value) addPayloadValue,
    required TResult Function(_UnSelectTemplate value) unSelectTemplate,
  }) {
    return selectTemplate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTemplate value)? selectTemplate,
    TResult? Function(_AddPayloadValue value)? addPayloadValue,
    TResult? Function(_UnSelectTemplate value)? unSelectTemplate,
  }) {
    return selectTemplate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTemplate value)? selectTemplate,
    TResult Function(_AddPayloadValue value)? addPayloadValue,
    TResult Function(_UnSelectTemplate value)? unSelectTemplate,
    required TResult orElse(),
  }) {
    if (selectTemplate != null) {
      return selectTemplate(this);
    }
    return orElse();
  }
}

abstract class _SelectTemplate implements GenerateTextEvent {
  const factory _SelectTemplate({required final Template template}) =
      _$_SelectTemplate;

  Template get template;
  @JsonKey(ignore: true)
  _$$_SelectTemplateCopyWith<_$_SelectTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddPayloadValueCopyWith<$Res> {
  factory _$$_AddPayloadValueCopyWith(
          _$_AddPayloadValue value, $Res Function(_$_AddPayloadValue) then) =
      __$$_AddPayloadValueCopyWithImpl<$Res>;
  @useResult
  $Res call({Pipe pipe, dynamic value});
}

/// @nodoc
class __$$_AddPayloadValueCopyWithImpl<$Res>
    extends _$GenerateTextEventCopyWithImpl<$Res, _$_AddPayloadValue>
    implements _$$_AddPayloadValueCopyWith<$Res> {
  __$$_AddPayloadValueCopyWithImpl(
      _$_AddPayloadValue _value, $Res Function(_$_AddPayloadValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pipe = null,
    Object? value = freezed,
  }) {
    return _then(_$_AddPayloadValue(
      pipe: null == pipe
          ? _value.pipe
          : pipe // ignore: cast_nullable_to_non_nullable
              as Pipe,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_AddPayloadValue implements _AddPayloadValue {
  const _$_AddPayloadValue({required this.pipe, required this.value});

  @override
  final Pipe pipe;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'GenerateTextEvent.addPayloadValue(pipe: $pipe, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPayloadValue &&
            (identical(other.pipe, pipe) || other.pipe == pipe) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pipe, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPayloadValueCopyWith<_$_AddPayloadValue> get copyWith =>
      __$$_AddPayloadValueCopyWithImpl<_$_AddPayloadValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Template template) selectTemplate,
    required TResult Function(Pipe pipe, dynamic value) addPayloadValue,
    required TResult Function() unSelectTemplate,
  }) {
    return addPayloadValue(pipe, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Template template)? selectTemplate,
    TResult? Function(Pipe pipe, dynamic value)? addPayloadValue,
    TResult? Function()? unSelectTemplate,
  }) {
    return addPayloadValue?.call(pipe, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Template template)? selectTemplate,
    TResult Function(Pipe pipe, dynamic value)? addPayloadValue,
    TResult Function()? unSelectTemplate,
    required TResult orElse(),
  }) {
    if (addPayloadValue != null) {
      return addPayloadValue(pipe, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTemplate value) selectTemplate,
    required TResult Function(_AddPayloadValue value) addPayloadValue,
    required TResult Function(_UnSelectTemplate value) unSelectTemplate,
  }) {
    return addPayloadValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTemplate value)? selectTemplate,
    TResult? Function(_AddPayloadValue value)? addPayloadValue,
    TResult? Function(_UnSelectTemplate value)? unSelectTemplate,
  }) {
    return addPayloadValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTemplate value)? selectTemplate,
    TResult Function(_AddPayloadValue value)? addPayloadValue,
    TResult Function(_UnSelectTemplate value)? unSelectTemplate,
    required TResult orElse(),
  }) {
    if (addPayloadValue != null) {
      return addPayloadValue(this);
    }
    return orElse();
  }
}

abstract class _AddPayloadValue implements GenerateTextEvent {
  const factory _AddPayloadValue(
      {required final Pipe pipe,
      required final dynamic value}) = _$_AddPayloadValue;

  Pipe get pipe;
  dynamic get value;
  @JsonKey(ignore: true)
  _$$_AddPayloadValueCopyWith<_$_AddPayloadValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnSelectTemplateCopyWith<$Res> {
  factory _$$_UnSelectTemplateCopyWith(
          _$_UnSelectTemplate value, $Res Function(_$_UnSelectTemplate) then) =
      __$$_UnSelectTemplateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnSelectTemplateCopyWithImpl<$Res>
    extends _$GenerateTextEventCopyWithImpl<$Res, _$_UnSelectTemplate>
    implements _$$_UnSelectTemplateCopyWith<$Res> {
  __$$_UnSelectTemplateCopyWithImpl(
      _$_UnSelectTemplate _value, $Res Function(_$_UnSelectTemplate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnSelectTemplate implements _UnSelectTemplate {
  const _$_UnSelectTemplate();

  @override
  String toString() {
    return 'GenerateTextEvent.unSelectTemplate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnSelectTemplate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Template template) selectTemplate,
    required TResult Function(Pipe pipe, dynamic value) addPayloadValue,
    required TResult Function() unSelectTemplate,
  }) {
    return unSelectTemplate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Template template)? selectTemplate,
    TResult? Function(Pipe pipe, dynamic value)? addPayloadValue,
    TResult? Function()? unSelectTemplate,
  }) {
    return unSelectTemplate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Template template)? selectTemplate,
    TResult Function(Pipe pipe, dynamic value)? addPayloadValue,
    TResult Function()? unSelectTemplate,
    required TResult orElse(),
  }) {
    if (unSelectTemplate != null) {
      return unSelectTemplate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTemplate value) selectTemplate,
    required TResult Function(_AddPayloadValue value) addPayloadValue,
    required TResult Function(_UnSelectTemplate value) unSelectTemplate,
  }) {
    return unSelectTemplate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTemplate value)? selectTemplate,
    TResult? Function(_AddPayloadValue value)? addPayloadValue,
    TResult? Function(_UnSelectTemplate value)? unSelectTemplate,
  }) {
    return unSelectTemplate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTemplate value)? selectTemplate,
    TResult Function(_AddPayloadValue value)? addPayloadValue,
    TResult Function(_UnSelectTemplate value)? unSelectTemplate,
    required TResult orElse(),
  }) {
    if (unSelectTemplate != null) {
      return unSelectTemplate(this);
    }
    return orElse();
  }
}

abstract class _UnSelectTemplate implements GenerateTextEvent {
  const factory _UnSelectTemplate() = _$_UnSelectTemplate;
}
