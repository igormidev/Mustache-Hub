// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variables_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariablesState _$VariablesStateFromJson(Map<String, dynamic> json) {
  return Normal.fromJson(json);
}

/// @nodoc
mixin _$VariablesState {
  List<TextPipe> get textPipes => throw _privateConstructorUsedError;
  List<BooleanPipe> get booleanPipes => throw _privateConstructorUsedError;
  List<ModelPipe> get modelPipes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextPipe> textPipes,
            List<BooleanPipe> booleanPipes, List<ModelPipe> modelPipes)
        normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextPipe> textPipes, List<BooleanPipe> booleanPipes,
            List<ModelPipe> modelPipes)?
        normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextPipe> textPipes, List<BooleanPipe> booleanPipes,
            List<ModelPipe> modelPipes)?
        normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Normal value) normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Normal value)? normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Normal value)? normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariablesStateCopyWith<VariablesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariablesStateCopyWith<$Res> {
  factory $VariablesStateCopyWith(
          VariablesState value, $Res Function(VariablesState) then) =
      _$VariablesStateCopyWithImpl<$Res, VariablesState>;
  @useResult
  $Res call(
      {List<TextPipe> textPipes,
      List<BooleanPipe> booleanPipes,
      List<ModelPipe> modelPipes});
}

/// @nodoc
class _$VariablesStateCopyWithImpl<$Res, $Val extends VariablesState>
    implements $VariablesStateCopyWith<$Res> {
  _$VariablesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textPipes = null,
    Object? booleanPipes = null,
    Object? modelPipes = null,
  }) {
    return _then(_value.copyWith(
      textPipes: null == textPipes
          ? _value.textPipes
          : textPipes // ignore: cast_nullable_to_non_nullable
              as List<TextPipe>,
      booleanPipes: null == booleanPipes
          ? _value.booleanPipes
          : booleanPipes // ignore: cast_nullable_to_non_nullable
              as List<BooleanPipe>,
      modelPipes: null == modelPipes
          ? _value.modelPipes
          : modelPipes // ignore: cast_nullable_to_non_nullable
              as List<ModelPipe>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NormalCopyWith<$Res>
    implements $VariablesStateCopyWith<$Res> {
  factory _$$NormalCopyWith(_$Normal value, $Res Function(_$Normal) then) =
      __$$NormalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TextPipe> textPipes,
      List<BooleanPipe> booleanPipes,
      List<ModelPipe> modelPipes});
}

/// @nodoc
class __$$NormalCopyWithImpl<$Res>
    extends _$VariablesStateCopyWithImpl<$Res, _$Normal>
    implements _$$NormalCopyWith<$Res> {
  __$$NormalCopyWithImpl(_$Normal _value, $Res Function(_$Normal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textPipes = null,
    Object? booleanPipes = null,
    Object? modelPipes = null,
  }) {
    return _then(_$Normal(
      textPipes: null == textPipes
          ? _value._textPipes
          : textPipes // ignore: cast_nullable_to_non_nullable
              as List<TextPipe>,
      booleanPipes: null == booleanPipes
          ? _value._booleanPipes
          : booleanPipes // ignore: cast_nullable_to_non_nullable
              as List<BooleanPipe>,
      modelPipes: null == modelPipes
          ? _value._modelPipes
          : modelPipes // ignore: cast_nullable_to_non_nullable
              as List<ModelPipe>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Normal implements Normal {
  const _$Normal(
      {required final List<TextPipe> textPipes,
      required final List<BooleanPipe> booleanPipes,
      required final List<ModelPipe> modelPipes})
      : _textPipes = textPipes,
        _booleanPipes = booleanPipes,
        _modelPipes = modelPipes;

  factory _$Normal.fromJson(Map<String, dynamic> json) =>
      _$$NormalFromJson(json);

  final List<TextPipe> _textPipes;
  @override
  List<TextPipe> get textPipes {
    if (_textPipes is EqualUnmodifiableListView) return _textPipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textPipes);
  }

  final List<BooleanPipe> _booleanPipes;
  @override
  List<BooleanPipe> get booleanPipes {
    if (_booleanPipes is EqualUnmodifiableListView) return _booleanPipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_booleanPipes);
  }

  final List<ModelPipe> _modelPipes;
  @override
  List<ModelPipe> get modelPipes {
    if (_modelPipes is EqualUnmodifiableListView) return _modelPipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modelPipes);
  }

  @override
  String toString() {
    return 'VariablesState.normal(textPipes: $textPipes, booleanPipes: $booleanPipes, modelPipes: $modelPipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Normal &&
            const DeepCollectionEquality()
                .equals(other._textPipes, _textPipes) &&
            const DeepCollectionEquality()
                .equals(other._booleanPipes, _booleanPipes) &&
            const DeepCollectionEquality()
                .equals(other._modelPipes, _modelPipes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_textPipes),
      const DeepCollectionEquality().hash(_booleanPipes),
      const DeepCollectionEquality().hash(_modelPipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NormalCopyWith<_$Normal> get copyWith =>
      __$$NormalCopyWithImpl<_$Normal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextPipe> textPipes,
            List<BooleanPipe> booleanPipes, List<ModelPipe> modelPipes)
        normal,
  }) {
    return normal(textPipes, booleanPipes, modelPipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextPipe> textPipes, List<BooleanPipe> booleanPipes,
            List<ModelPipe> modelPipes)?
        normal,
  }) {
    return normal?.call(textPipes, booleanPipes, modelPipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextPipe> textPipes, List<BooleanPipe> booleanPipes,
            List<ModelPipe> modelPipes)?
        normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(textPipes, booleanPipes, modelPipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Normal value) normal,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Normal value)? normal,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Normal value)? normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NormalToJson(
      this,
    );
  }
}

abstract class Normal implements VariablesState {
  const factory Normal(
      {required final List<TextPipe> textPipes,
      required final List<BooleanPipe> booleanPipes,
      required final List<ModelPipe> modelPipes}) = _$Normal;

  factory Normal.fromJson(Map<String, dynamic> json) = _$Normal.fromJson;

  @override
  List<TextPipe> get textPipes;
  @override
  List<BooleanPipe> get booleanPipes;
  @override
  List<ModelPipe> get modelPipes;
  @override
  @JsonKey(ignore: true)
  _$$NormalCopyWith<_$Normal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VariablesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextPipe> textPipes) updateTextVariables,
    required TResult Function(List<BooleanPipe> booleanPipes)
        updateBooleanVariables,
    required TResult Function(List<ModelPipe> modelPipes) updateModelVariables,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextPipe> textPipes)? updateTextVariables,
    TResult? Function(List<BooleanPipe> booleanPipes)? updateBooleanVariables,
    TResult? Function(List<ModelPipe> modelPipes)? updateModelVariables,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextPipe> textPipes)? updateTextVariables,
    TResult Function(List<BooleanPipe> booleanPipes)? updateBooleanVariables,
    TResult Function(List<ModelPipe> modelPipes)? updateModelVariables,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTextVariables value) updateTextVariables,
    required TResult Function(_UpdateBooleanVariables value)
        updateBooleanVariables,
    required TResult Function(_UpdateModelVariables value) updateModelVariables,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTextVariables value)? updateTextVariables,
    TResult? Function(_UpdateBooleanVariables value)? updateBooleanVariables,
    TResult? Function(_UpdateModelVariables value)? updateModelVariables,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTextVariables value)? updateTextVariables,
    TResult Function(_UpdateBooleanVariables value)? updateBooleanVariables,
    TResult Function(_UpdateModelVariables value)? updateModelVariables,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariablesEventCopyWith<$Res> {
  factory $VariablesEventCopyWith(
          VariablesEvent value, $Res Function(VariablesEvent) then) =
      _$VariablesEventCopyWithImpl<$Res, VariablesEvent>;
}

/// @nodoc
class _$VariablesEventCopyWithImpl<$Res, $Val extends VariablesEvent>
    implements $VariablesEventCopyWith<$Res> {
  _$VariablesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateTextVariablesCopyWith<$Res> {
  factory _$$_UpdateTextVariablesCopyWith(_$_UpdateTextVariables value,
          $Res Function(_$_UpdateTextVariables) then) =
      __$$_UpdateTextVariablesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TextPipe> textPipes});
}

/// @nodoc
class __$$_UpdateTextVariablesCopyWithImpl<$Res>
    extends _$VariablesEventCopyWithImpl<$Res, _$_UpdateTextVariables>
    implements _$$_UpdateTextVariablesCopyWith<$Res> {
  __$$_UpdateTextVariablesCopyWithImpl(_$_UpdateTextVariables _value,
      $Res Function(_$_UpdateTextVariables) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textPipes = null,
  }) {
    return _then(_$_UpdateTextVariables(
      textPipes: null == textPipes
          ? _value._textPipes
          : textPipes // ignore: cast_nullable_to_non_nullable
              as List<TextPipe>,
    ));
  }
}

/// @nodoc

class _$_UpdateTextVariables implements _UpdateTextVariables {
  const _$_UpdateTextVariables({required final List<TextPipe> textPipes})
      : _textPipes = textPipes;

  final List<TextPipe> _textPipes;
  @override
  List<TextPipe> get textPipes {
    if (_textPipes is EqualUnmodifiableListView) return _textPipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textPipes);
  }

  @override
  String toString() {
    return 'VariablesEvent.updateTextVariables(textPipes: $textPipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTextVariables &&
            const DeepCollectionEquality()
                .equals(other._textPipes, _textPipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_textPipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateTextVariablesCopyWith<_$_UpdateTextVariables> get copyWith =>
      __$$_UpdateTextVariablesCopyWithImpl<_$_UpdateTextVariables>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextPipe> textPipes) updateTextVariables,
    required TResult Function(List<BooleanPipe> booleanPipes)
        updateBooleanVariables,
    required TResult Function(List<ModelPipe> modelPipes) updateModelVariables,
  }) {
    return updateTextVariables(textPipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextPipe> textPipes)? updateTextVariables,
    TResult? Function(List<BooleanPipe> booleanPipes)? updateBooleanVariables,
    TResult? Function(List<ModelPipe> modelPipes)? updateModelVariables,
  }) {
    return updateTextVariables?.call(textPipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextPipe> textPipes)? updateTextVariables,
    TResult Function(List<BooleanPipe> booleanPipes)? updateBooleanVariables,
    TResult Function(List<ModelPipe> modelPipes)? updateModelVariables,
    required TResult orElse(),
  }) {
    if (updateTextVariables != null) {
      return updateTextVariables(textPipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTextVariables value) updateTextVariables,
    required TResult Function(_UpdateBooleanVariables value)
        updateBooleanVariables,
    required TResult Function(_UpdateModelVariables value) updateModelVariables,
  }) {
    return updateTextVariables(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTextVariables value)? updateTextVariables,
    TResult? Function(_UpdateBooleanVariables value)? updateBooleanVariables,
    TResult? Function(_UpdateModelVariables value)? updateModelVariables,
  }) {
    return updateTextVariables?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTextVariables value)? updateTextVariables,
    TResult Function(_UpdateBooleanVariables value)? updateBooleanVariables,
    TResult Function(_UpdateModelVariables value)? updateModelVariables,
    required TResult orElse(),
  }) {
    if (updateTextVariables != null) {
      return updateTextVariables(this);
    }
    return orElse();
  }
}

abstract class _UpdateTextVariables implements VariablesEvent {
  const factory _UpdateTextVariables(
      {required final List<TextPipe> textPipes}) = _$_UpdateTextVariables;

  List<TextPipe> get textPipes;
  @JsonKey(ignore: true)
  _$$_UpdateTextVariablesCopyWith<_$_UpdateTextVariables> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateBooleanVariablesCopyWith<$Res> {
  factory _$$_UpdateBooleanVariablesCopyWith(_$_UpdateBooleanVariables value,
          $Res Function(_$_UpdateBooleanVariables) then) =
      __$$_UpdateBooleanVariablesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BooleanPipe> booleanPipes});
}

/// @nodoc
class __$$_UpdateBooleanVariablesCopyWithImpl<$Res>
    extends _$VariablesEventCopyWithImpl<$Res, _$_UpdateBooleanVariables>
    implements _$$_UpdateBooleanVariablesCopyWith<$Res> {
  __$$_UpdateBooleanVariablesCopyWithImpl(_$_UpdateBooleanVariables _value,
      $Res Function(_$_UpdateBooleanVariables) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booleanPipes = null,
  }) {
    return _then(_$_UpdateBooleanVariables(
      booleanPipes: null == booleanPipes
          ? _value._booleanPipes
          : booleanPipes // ignore: cast_nullable_to_non_nullable
              as List<BooleanPipe>,
    ));
  }
}

/// @nodoc

class _$_UpdateBooleanVariables implements _UpdateBooleanVariables {
  const _$_UpdateBooleanVariables(
      {required final List<BooleanPipe> booleanPipes})
      : _booleanPipes = booleanPipes;

  final List<BooleanPipe> _booleanPipes;
  @override
  List<BooleanPipe> get booleanPipes {
    if (_booleanPipes is EqualUnmodifiableListView) return _booleanPipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_booleanPipes);
  }

  @override
  String toString() {
    return 'VariablesEvent.updateBooleanVariables(booleanPipes: $booleanPipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateBooleanVariables &&
            const DeepCollectionEquality()
                .equals(other._booleanPipes, _booleanPipes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_booleanPipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateBooleanVariablesCopyWith<_$_UpdateBooleanVariables> get copyWith =>
      __$$_UpdateBooleanVariablesCopyWithImpl<_$_UpdateBooleanVariables>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextPipe> textPipes) updateTextVariables,
    required TResult Function(List<BooleanPipe> booleanPipes)
        updateBooleanVariables,
    required TResult Function(List<ModelPipe> modelPipes) updateModelVariables,
  }) {
    return updateBooleanVariables(booleanPipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextPipe> textPipes)? updateTextVariables,
    TResult? Function(List<BooleanPipe> booleanPipes)? updateBooleanVariables,
    TResult? Function(List<ModelPipe> modelPipes)? updateModelVariables,
  }) {
    return updateBooleanVariables?.call(booleanPipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextPipe> textPipes)? updateTextVariables,
    TResult Function(List<BooleanPipe> booleanPipes)? updateBooleanVariables,
    TResult Function(List<ModelPipe> modelPipes)? updateModelVariables,
    required TResult orElse(),
  }) {
    if (updateBooleanVariables != null) {
      return updateBooleanVariables(booleanPipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTextVariables value) updateTextVariables,
    required TResult Function(_UpdateBooleanVariables value)
        updateBooleanVariables,
    required TResult Function(_UpdateModelVariables value) updateModelVariables,
  }) {
    return updateBooleanVariables(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTextVariables value)? updateTextVariables,
    TResult? Function(_UpdateBooleanVariables value)? updateBooleanVariables,
    TResult? Function(_UpdateModelVariables value)? updateModelVariables,
  }) {
    return updateBooleanVariables?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTextVariables value)? updateTextVariables,
    TResult Function(_UpdateBooleanVariables value)? updateBooleanVariables,
    TResult Function(_UpdateModelVariables value)? updateModelVariables,
    required TResult orElse(),
  }) {
    if (updateBooleanVariables != null) {
      return updateBooleanVariables(this);
    }
    return orElse();
  }
}

abstract class _UpdateBooleanVariables implements VariablesEvent {
  const factory _UpdateBooleanVariables(
          {required final List<BooleanPipe> booleanPipes}) =
      _$_UpdateBooleanVariables;

  List<BooleanPipe> get booleanPipes;
  @JsonKey(ignore: true)
  _$$_UpdateBooleanVariablesCopyWith<_$_UpdateBooleanVariables> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateModelVariablesCopyWith<$Res> {
  factory _$$_UpdateModelVariablesCopyWith(_$_UpdateModelVariables value,
          $Res Function(_$_UpdateModelVariables) then) =
      __$$_UpdateModelVariablesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ModelPipe> modelPipes});
}

/// @nodoc
class __$$_UpdateModelVariablesCopyWithImpl<$Res>
    extends _$VariablesEventCopyWithImpl<$Res, _$_UpdateModelVariables>
    implements _$$_UpdateModelVariablesCopyWith<$Res> {
  __$$_UpdateModelVariablesCopyWithImpl(_$_UpdateModelVariables _value,
      $Res Function(_$_UpdateModelVariables) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelPipes = null,
  }) {
    return _then(_$_UpdateModelVariables(
      modelPipes: null == modelPipes
          ? _value._modelPipes
          : modelPipes // ignore: cast_nullable_to_non_nullable
              as List<ModelPipe>,
    ));
  }
}

/// @nodoc

class _$_UpdateModelVariables implements _UpdateModelVariables {
  const _$_UpdateModelVariables({required final List<ModelPipe> modelPipes})
      : _modelPipes = modelPipes;

  final List<ModelPipe> _modelPipes;
  @override
  List<ModelPipe> get modelPipes {
    if (_modelPipes is EqualUnmodifiableListView) return _modelPipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modelPipes);
  }

  @override
  String toString() {
    return 'VariablesEvent.updateModelVariables(modelPipes: $modelPipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateModelVariables &&
            const DeepCollectionEquality()
                .equals(other._modelPipes, _modelPipes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_modelPipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateModelVariablesCopyWith<_$_UpdateModelVariables> get copyWith =>
      __$$_UpdateModelVariablesCopyWithImpl<_$_UpdateModelVariables>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextPipe> textPipes) updateTextVariables,
    required TResult Function(List<BooleanPipe> booleanPipes)
        updateBooleanVariables,
    required TResult Function(List<ModelPipe> modelPipes) updateModelVariables,
  }) {
    return updateModelVariables(modelPipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextPipe> textPipes)? updateTextVariables,
    TResult? Function(List<BooleanPipe> booleanPipes)? updateBooleanVariables,
    TResult? Function(List<ModelPipe> modelPipes)? updateModelVariables,
  }) {
    return updateModelVariables?.call(modelPipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextPipe> textPipes)? updateTextVariables,
    TResult Function(List<BooleanPipe> booleanPipes)? updateBooleanVariables,
    TResult Function(List<ModelPipe> modelPipes)? updateModelVariables,
    required TResult orElse(),
  }) {
    if (updateModelVariables != null) {
      return updateModelVariables(modelPipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTextVariables value) updateTextVariables,
    required TResult Function(_UpdateBooleanVariables value)
        updateBooleanVariables,
    required TResult Function(_UpdateModelVariables value) updateModelVariables,
  }) {
    return updateModelVariables(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTextVariables value)? updateTextVariables,
    TResult? Function(_UpdateBooleanVariables value)? updateBooleanVariables,
    TResult? Function(_UpdateModelVariables value)? updateModelVariables,
  }) {
    return updateModelVariables?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTextVariables value)? updateTextVariables,
    TResult Function(_UpdateBooleanVariables value)? updateBooleanVariables,
    TResult Function(_UpdateModelVariables value)? updateModelVariables,
    required TResult orElse(),
  }) {
    if (updateModelVariables != null) {
      return updateModelVariables(this);
    }
    return orElse();
  }
}

abstract class _UpdateModelVariables implements VariablesEvent {
  const factory _UpdateModelVariables(
      {required final List<ModelPipe> modelPipes}) = _$_UpdateModelVariables;

  List<ModelPipe> get modelPipes;
  @JsonKey(ignore: true)
  _$$_UpdateModelVariablesCopyWith<_$_UpdateModelVariables> get copyWith =>
      throw _privateConstructorUsedError;
}
