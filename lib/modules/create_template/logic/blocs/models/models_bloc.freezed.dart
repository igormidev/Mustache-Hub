// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ModelsState {
  List<ModelPipe> get pipes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ModelPipe> pipes) normal,
    required TResult Function(
            List<ModelPipe> pipes, int editingPipeIndex, ModelPipe editingPipe)
        editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ModelPipe> pipes)? normal,
    TResult? Function(
            List<ModelPipe> pipes, int editingPipeIndex, ModelPipe editingPipe)?
        editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ModelPipe> pipes)? normal,
    TResult Function(
            List<ModelPipe> pipes, int editingPipeIndex, ModelPipe editingPipe)?
        editing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) normal,
    required TResult Function(_Editing value) editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? normal,
    TResult? Function(_Editing value)? editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? normal,
    TResult Function(_Editing value)? editing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModelsStateCopyWith<ModelsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelsStateCopyWith<$Res> {
  factory $ModelsStateCopyWith(
          ModelsState value, $Res Function(ModelsState) then) =
      _$ModelsStateCopyWithImpl<$Res, ModelsState>;
  @useResult
  $Res call({List<ModelPipe> pipes});
}

/// @nodoc
class _$ModelsStateCopyWithImpl<$Res, $Val extends ModelsState>
    implements $ModelsStateCopyWith<$Res> {
  _$ModelsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pipes = null,
  }) {
    return _then(_value.copyWith(
      pipes: null == pipes
          ? _value.pipes
          : pipes // ignore: cast_nullable_to_non_nullable
              as List<ModelPipe>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $ModelsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ModelPipe> pipes});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ModelsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pipes = null,
  }) {
    return _then(_$_Initial(
      pipes: null == pipes
          ? _value._pipes
          : pipes // ignore: cast_nullable_to_non_nullable
              as List<ModelPipe>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required final List<ModelPipe> pipes}) : _pipes = pipes;

  final List<ModelPipe> _pipes;
  @override
  List<ModelPipe> get pipes {
    if (_pipes is EqualUnmodifiableListView) return _pipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pipes);
  }

  @override
  String toString() {
    return 'ModelsState.normal(pipes: $pipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._pipes, _pipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ModelPipe> pipes) normal,
    required TResult Function(
            List<ModelPipe> pipes, int editingPipeIndex, ModelPipe editingPipe)
        editing,
  }) {
    return normal(pipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ModelPipe> pipes)? normal,
    TResult? Function(
            List<ModelPipe> pipes, int editingPipeIndex, ModelPipe editingPipe)?
        editing,
  }) {
    return normal?.call(pipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ModelPipe> pipes)? normal,
    TResult Function(
            List<ModelPipe> pipes, int editingPipeIndex, ModelPipe editingPipe)?
        editing,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(pipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) normal,
    required TResult Function(_Editing value) editing,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? normal,
    TResult? Function(_Editing value)? editing,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? normal,
    TResult Function(_Editing value)? editing,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ModelsState {
  const factory _Initial({required final List<ModelPipe> pipes}) = _$_Initial;

  @override
  List<ModelPipe> get pipes;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditingCopyWith<$Res> implements $ModelsStateCopyWith<$Res> {
  factory _$$_EditingCopyWith(
          _$_Editing value, $Res Function(_$_Editing) then) =
      __$$_EditingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ModelPipe> pipes, int editingPipeIndex, ModelPipe editingPipe});
}

/// @nodoc
class __$$_EditingCopyWithImpl<$Res>
    extends _$ModelsStateCopyWithImpl<$Res, _$_Editing>
    implements _$$_EditingCopyWith<$Res> {
  __$$_EditingCopyWithImpl(_$_Editing _value, $Res Function(_$_Editing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pipes = null,
    Object? editingPipeIndex = null,
    Object? editingPipe = null,
  }) {
    return _then(_$_Editing(
      pipes: null == pipes
          ? _value._pipes
          : pipes // ignore: cast_nullable_to_non_nullable
              as List<ModelPipe>,
      editingPipeIndex: null == editingPipeIndex
          ? _value.editingPipeIndex
          : editingPipeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      editingPipe: null == editingPipe
          ? _value.editingPipe
          : editingPipe // ignore: cast_nullable_to_non_nullable
              as ModelPipe,
    ));
  }
}

/// @nodoc

class _$_Editing implements _Editing {
  const _$_Editing(
      {required final List<ModelPipe> pipes,
      required this.editingPipeIndex,
      required this.editingPipe})
      : _pipes = pipes;

  final List<ModelPipe> _pipes;
  @override
  List<ModelPipe> get pipes {
    if (_pipes is EqualUnmodifiableListView) return _pipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pipes);
  }

  @override
  final int editingPipeIndex;
  @override
  final ModelPipe editingPipe;

  @override
  String toString() {
    return 'ModelsState.editing(pipes: $pipes, editingPipeIndex: $editingPipeIndex, editingPipe: $editingPipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Editing &&
            const DeepCollectionEquality().equals(other._pipes, _pipes) &&
            (identical(other.editingPipeIndex, editingPipeIndex) ||
                other.editingPipeIndex == editingPipeIndex) &&
            (identical(other.editingPipe, editingPipe) ||
                other.editingPipe == editingPipe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pipes),
      editingPipeIndex,
      editingPipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditingCopyWith<_$_Editing> get copyWith =>
      __$$_EditingCopyWithImpl<_$_Editing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ModelPipe> pipes) normal,
    required TResult Function(
            List<ModelPipe> pipes, int editingPipeIndex, ModelPipe editingPipe)
        editing,
  }) {
    return editing(pipes, editingPipeIndex, editingPipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ModelPipe> pipes)? normal,
    TResult? Function(
            List<ModelPipe> pipes, int editingPipeIndex, ModelPipe editingPipe)?
        editing,
  }) {
    return editing?.call(pipes, editingPipeIndex, editingPipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ModelPipe> pipes)? normal,
    TResult Function(
            List<ModelPipe> pipes, int editingPipeIndex, ModelPipe editingPipe)?
        editing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(pipes, editingPipeIndex, editingPipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) normal,
    required TResult Function(_Editing value) editing,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? normal,
    TResult? Function(_Editing value)? editing,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? normal,
    TResult Function(_Editing value)? editing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class _Editing implements ModelsState {
  const factory _Editing(
      {required final List<ModelPipe> pipes,
      required final int editingPipeIndex,
      required final ModelPipe editingPipe}) = _$_Editing;

  @override
  List<ModelPipe> get pipes;
  int get editingPipeIndex;
  ModelPipe get editingPipe;
  @override
  @JsonKey(ignore: true)
  _$$_EditingCopyWith<_$_Editing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ModelsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pipeIndex) startEditingPipe,
    required TResult Function() createNewPipe,
    required TResult Function(ModelPipe pipe) finishPipeEdit,
    required TResult Function(ModelPipe pipe) updateEditPipe,
    required TResult Function() deletePipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pipeIndex)? startEditingPipe,
    TResult? Function()? createNewPipe,
    TResult? Function(ModelPipe pipe)? finishPipeEdit,
    TResult? Function(ModelPipe pipe)? updateEditPipe,
    TResult? Function()? deletePipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pipeIndex)? startEditingPipe,
    TResult Function()? createNewPipe,
    TResult Function(ModelPipe pipe)? finishPipeEdit,
    TResult Function(ModelPipe pipe)? updateEditPipe,
    TResult Function()? deletePipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartEditingPipe value) startEditingPipe,
    required TResult Function(_CreateNewPipe value) createNewPipe,
    required TResult Function(_FinishPipeEdit value) finishPipeEdit,
    required TResult Function(_UpdateEditPipe value) updateEditPipe,
    required TResult Function(_DeletePipe value) deletePipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartEditingPipe value)? startEditingPipe,
    TResult? Function(_CreateNewPipe value)? createNewPipe,
    TResult? Function(_FinishPipeEdit value)? finishPipeEdit,
    TResult? Function(_UpdateEditPipe value)? updateEditPipe,
    TResult? Function(_DeletePipe value)? deletePipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartEditingPipe value)? startEditingPipe,
    TResult Function(_CreateNewPipe value)? createNewPipe,
    TResult Function(_FinishPipeEdit value)? finishPipeEdit,
    TResult Function(_UpdateEditPipe value)? updateEditPipe,
    TResult Function(_DeletePipe value)? deletePipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelsEventCopyWith<$Res> {
  factory $ModelsEventCopyWith(
          ModelsEvent value, $Res Function(ModelsEvent) then) =
      _$ModelsEventCopyWithImpl<$Res, ModelsEvent>;
}

/// @nodoc
class _$ModelsEventCopyWithImpl<$Res, $Val extends ModelsEvent>
    implements $ModelsEventCopyWith<$Res> {
  _$ModelsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartEditingPipeCopyWith<$Res> {
  factory _$$_StartEditingPipeCopyWith(
          _$_StartEditingPipe value, $Res Function(_$_StartEditingPipe) then) =
      __$$_StartEditingPipeCopyWithImpl<$Res>;
  @useResult
  $Res call({int pipeIndex});
}

/// @nodoc
class __$$_StartEditingPipeCopyWithImpl<$Res>
    extends _$ModelsEventCopyWithImpl<$Res, _$_StartEditingPipe>
    implements _$$_StartEditingPipeCopyWith<$Res> {
  __$$_StartEditingPipeCopyWithImpl(
      _$_StartEditingPipe _value, $Res Function(_$_StartEditingPipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pipeIndex = null,
  }) {
    return _then(_$_StartEditingPipe(
      pipeIndex: null == pipeIndex
          ? _value.pipeIndex
          : pipeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StartEditingPipe implements _StartEditingPipe {
  const _$_StartEditingPipe({required this.pipeIndex});

  @override
  final int pipeIndex;

  @override
  String toString() {
    return 'ModelsEvent.startEditingPipe(pipeIndex: $pipeIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartEditingPipe &&
            (identical(other.pipeIndex, pipeIndex) ||
                other.pipeIndex == pipeIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pipeIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartEditingPipeCopyWith<_$_StartEditingPipe> get copyWith =>
      __$$_StartEditingPipeCopyWithImpl<_$_StartEditingPipe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pipeIndex) startEditingPipe,
    required TResult Function() createNewPipe,
    required TResult Function(ModelPipe pipe) finishPipeEdit,
    required TResult Function(ModelPipe pipe) updateEditPipe,
    required TResult Function() deletePipe,
  }) {
    return startEditingPipe(pipeIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pipeIndex)? startEditingPipe,
    TResult? Function()? createNewPipe,
    TResult? Function(ModelPipe pipe)? finishPipeEdit,
    TResult? Function(ModelPipe pipe)? updateEditPipe,
    TResult? Function()? deletePipe,
  }) {
    return startEditingPipe?.call(pipeIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pipeIndex)? startEditingPipe,
    TResult Function()? createNewPipe,
    TResult Function(ModelPipe pipe)? finishPipeEdit,
    TResult Function(ModelPipe pipe)? updateEditPipe,
    TResult Function()? deletePipe,
    required TResult orElse(),
  }) {
    if (startEditingPipe != null) {
      return startEditingPipe(pipeIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartEditingPipe value) startEditingPipe,
    required TResult Function(_CreateNewPipe value) createNewPipe,
    required TResult Function(_FinishPipeEdit value) finishPipeEdit,
    required TResult Function(_UpdateEditPipe value) updateEditPipe,
    required TResult Function(_DeletePipe value) deletePipe,
  }) {
    return startEditingPipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartEditingPipe value)? startEditingPipe,
    TResult? Function(_CreateNewPipe value)? createNewPipe,
    TResult? Function(_FinishPipeEdit value)? finishPipeEdit,
    TResult? Function(_UpdateEditPipe value)? updateEditPipe,
    TResult? Function(_DeletePipe value)? deletePipe,
  }) {
    return startEditingPipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartEditingPipe value)? startEditingPipe,
    TResult Function(_CreateNewPipe value)? createNewPipe,
    TResult Function(_FinishPipeEdit value)? finishPipeEdit,
    TResult Function(_UpdateEditPipe value)? updateEditPipe,
    TResult Function(_DeletePipe value)? deletePipe,
    required TResult orElse(),
  }) {
    if (startEditingPipe != null) {
      return startEditingPipe(this);
    }
    return orElse();
  }
}

abstract class _StartEditingPipe implements ModelsEvent {
  const factory _StartEditingPipe({required final int pipeIndex}) =
      _$_StartEditingPipe;

  int get pipeIndex;
  @JsonKey(ignore: true)
  _$$_StartEditingPipeCopyWith<_$_StartEditingPipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateNewPipeCopyWith<$Res> {
  factory _$$_CreateNewPipeCopyWith(
          _$_CreateNewPipe value, $Res Function(_$_CreateNewPipe) then) =
      __$$_CreateNewPipeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateNewPipeCopyWithImpl<$Res>
    extends _$ModelsEventCopyWithImpl<$Res, _$_CreateNewPipe>
    implements _$$_CreateNewPipeCopyWith<$Res> {
  __$$_CreateNewPipeCopyWithImpl(
      _$_CreateNewPipe _value, $Res Function(_$_CreateNewPipe) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateNewPipe implements _CreateNewPipe {
  const _$_CreateNewPipe();

  @override
  String toString() {
    return 'ModelsEvent.createNewPipe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateNewPipe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pipeIndex) startEditingPipe,
    required TResult Function() createNewPipe,
    required TResult Function(ModelPipe pipe) finishPipeEdit,
    required TResult Function(ModelPipe pipe) updateEditPipe,
    required TResult Function() deletePipe,
  }) {
    return createNewPipe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pipeIndex)? startEditingPipe,
    TResult? Function()? createNewPipe,
    TResult? Function(ModelPipe pipe)? finishPipeEdit,
    TResult? Function(ModelPipe pipe)? updateEditPipe,
    TResult? Function()? deletePipe,
  }) {
    return createNewPipe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pipeIndex)? startEditingPipe,
    TResult Function()? createNewPipe,
    TResult Function(ModelPipe pipe)? finishPipeEdit,
    TResult Function(ModelPipe pipe)? updateEditPipe,
    TResult Function()? deletePipe,
    required TResult orElse(),
  }) {
    if (createNewPipe != null) {
      return createNewPipe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartEditingPipe value) startEditingPipe,
    required TResult Function(_CreateNewPipe value) createNewPipe,
    required TResult Function(_FinishPipeEdit value) finishPipeEdit,
    required TResult Function(_UpdateEditPipe value) updateEditPipe,
    required TResult Function(_DeletePipe value) deletePipe,
  }) {
    return createNewPipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartEditingPipe value)? startEditingPipe,
    TResult? Function(_CreateNewPipe value)? createNewPipe,
    TResult? Function(_FinishPipeEdit value)? finishPipeEdit,
    TResult? Function(_UpdateEditPipe value)? updateEditPipe,
    TResult? Function(_DeletePipe value)? deletePipe,
  }) {
    return createNewPipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartEditingPipe value)? startEditingPipe,
    TResult Function(_CreateNewPipe value)? createNewPipe,
    TResult Function(_FinishPipeEdit value)? finishPipeEdit,
    TResult Function(_UpdateEditPipe value)? updateEditPipe,
    TResult Function(_DeletePipe value)? deletePipe,
    required TResult orElse(),
  }) {
    if (createNewPipe != null) {
      return createNewPipe(this);
    }
    return orElse();
  }
}

abstract class _CreateNewPipe implements ModelsEvent {
  const factory _CreateNewPipe() = _$_CreateNewPipe;
}

/// @nodoc
abstract class _$$_FinishPipeEditCopyWith<$Res> {
  factory _$$_FinishPipeEditCopyWith(
          _$_FinishPipeEdit value, $Res Function(_$_FinishPipeEdit) then) =
      __$$_FinishPipeEditCopyWithImpl<$Res>;
  @useResult
  $Res call({ModelPipe pipe});
}

/// @nodoc
class __$$_FinishPipeEditCopyWithImpl<$Res>
    extends _$ModelsEventCopyWithImpl<$Res, _$_FinishPipeEdit>
    implements _$$_FinishPipeEditCopyWith<$Res> {
  __$$_FinishPipeEditCopyWithImpl(
      _$_FinishPipeEdit _value, $Res Function(_$_FinishPipeEdit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pipe = null,
  }) {
    return _then(_$_FinishPipeEdit(
      pipe: null == pipe
          ? _value.pipe
          : pipe // ignore: cast_nullable_to_non_nullable
              as ModelPipe,
    ));
  }
}

/// @nodoc

class _$_FinishPipeEdit implements _FinishPipeEdit {
  const _$_FinishPipeEdit({required this.pipe});

  @override
  final ModelPipe pipe;

  @override
  String toString() {
    return 'ModelsEvent.finishPipeEdit(pipe: $pipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinishPipeEdit &&
            (identical(other.pipe, pipe) || other.pipe == pipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinishPipeEditCopyWith<_$_FinishPipeEdit> get copyWith =>
      __$$_FinishPipeEditCopyWithImpl<_$_FinishPipeEdit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pipeIndex) startEditingPipe,
    required TResult Function() createNewPipe,
    required TResult Function(ModelPipe pipe) finishPipeEdit,
    required TResult Function(ModelPipe pipe) updateEditPipe,
    required TResult Function() deletePipe,
  }) {
    return finishPipeEdit(pipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pipeIndex)? startEditingPipe,
    TResult? Function()? createNewPipe,
    TResult? Function(ModelPipe pipe)? finishPipeEdit,
    TResult? Function(ModelPipe pipe)? updateEditPipe,
    TResult? Function()? deletePipe,
  }) {
    return finishPipeEdit?.call(pipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pipeIndex)? startEditingPipe,
    TResult Function()? createNewPipe,
    TResult Function(ModelPipe pipe)? finishPipeEdit,
    TResult Function(ModelPipe pipe)? updateEditPipe,
    TResult Function()? deletePipe,
    required TResult orElse(),
  }) {
    if (finishPipeEdit != null) {
      return finishPipeEdit(pipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartEditingPipe value) startEditingPipe,
    required TResult Function(_CreateNewPipe value) createNewPipe,
    required TResult Function(_FinishPipeEdit value) finishPipeEdit,
    required TResult Function(_UpdateEditPipe value) updateEditPipe,
    required TResult Function(_DeletePipe value) deletePipe,
  }) {
    return finishPipeEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartEditingPipe value)? startEditingPipe,
    TResult? Function(_CreateNewPipe value)? createNewPipe,
    TResult? Function(_FinishPipeEdit value)? finishPipeEdit,
    TResult? Function(_UpdateEditPipe value)? updateEditPipe,
    TResult? Function(_DeletePipe value)? deletePipe,
  }) {
    return finishPipeEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartEditingPipe value)? startEditingPipe,
    TResult Function(_CreateNewPipe value)? createNewPipe,
    TResult Function(_FinishPipeEdit value)? finishPipeEdit,
    TResult Function(_UpdateEditPipe value)? updateEditPipe,
    TResult Function(_DeletePipe value)? deletePipe,
    required TResult orElse(),
  }) {
    if (finishPipeEdit != null) {
      return finishPipeEdit(this);
    }
    return orElse();
  }
}

abstract class _FinishPipeEdit implements ModelsEvent {
  const factory _FinishPipeEdit({required final ModelPipe pipe}) =
      _$_FinishPipeEdit;

  ModelPipe get pipe;
  @JsonKey(ignore: true)
  _$$_FinishPipeEditCopyWith<_$_FinishPipeEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateEditPipeCopyWith<$Res> {
  factory _$$_UpdateEditPipeCopyWith(
          _$_UpdateEditPipe value, $Res Function(_$_UpdateEditPipe) then) =
      __$$_UpdateEditPipeCopyWithImpl<$Res>;
  @useResult
  $Res call({ModelPipe pipe});
}

/// @nodoc
class __$$_UpdateEditPipeCopyWithImpl<$Res>
    extends _$ModelsEventCopyWithImpl<$Res, _$_UpdateEditPipe>
    implements _$$_UpdateEditPipeCopyWith<$Res> {
  __$$_UpdateEditPipeCopyWithImpl(
      _$_UpdateEditPipe _value, $Res Function(_$_UpdateEditPipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pipe = null,
  }) {
    return _then(_$_UpdateEditPipe(
      pipe: null == pipe
          ? _value.pipe
          : pipe // ignore: cast_nullable_to_non_nullable
              as ModelPipe,
    ));
  }
}

/// @nodoc

class _$_UpdateEditPipe implements _UpdateEditPipe {
  const _$_UpdateEditPipe({required this.pipe});

  @override
  final ModelPipe pipe;

  @override
  String toString() {
    return 'ModelsEvent.updateEditPipe(pipe: $pipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEditPipe &&
            (identical(other.pipe, pipe) || other.pipe == pipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateEditPipeCopyWith<_$_UpdateEditPipe> get copyWith =>
      __$$_UpdateEditPipeCopyWithImpl<_$_UpdateEditPipe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pipeIndex) startEditingPipe,
    required TResult Function() createNewPipe,
    required TResult Function(ModelPipe pipe) finishPipeEdit,
    required TResult Function(ModelPipe pipe) updateEditPipe,
    required TResult Function() deletePipe,
  }) {
    return updateEditPipe(pipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pipeIndex)? startEditingPipe,
    TResult? Function()? createNewPipe,
    TResult? Function(ModelPipe pipe)? finishPipeEdit,
    TResult? Function(ModelPipe pipe)? updateEditPipe,
    TResult? Function()? deletePipe,
  }) {
    return updateEditPipe?.call(pipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pipeIndex)? startEditingPipe,
    TResult Function()? createNewPipe,
    TResult Function(ModelPipe pipe)? finishPipeEdit,
    TResult Function(ModelPipe pipe)? updateEditPipe,
    TResult Function()? deletePipe,
    required TResult orElse(),
  }) {
    if (updateEditPipe != null) {
      return updateEditPipe(pipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartEditingPipe value) startEditingPipe,
    required TResult Function(_CreateNewPipe value) createNewPipe,
    required TResult Function(_FinishPipeEdit value) finishPipeEdit,
    required TResult Function(_UpdateEditPipe value) updateEditPipe,
    required TResult Function(_DeletePipe value) deletePipe,
  }) {
    return updateEditPipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartEditingPipe value)? startEditingPipe,
    TResult? Function(_CreateNewPipe value)? createNewPipe,
    TResult? Function(_FinishPipeEdit value)? finishPipeEdit,
    TResult? Function(_UpdateEditPipe value)? updateEditPipe,
    TResult? Function(_DeletePipe value)? deletePipe,
  }) {
    return updateEditPipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartEditingPipe value)? startEditingPipe,
    TResult Function(_CreateNewPipe value)? createNewPipe,
    TResult Function(_FinishPipeEdit value)? finishPipeEdit,
    TResult Function(_UpdateEditPipe value)? updateEditPipe,
    TResult Function(_DeletePipe value)? deletePipe,
    required TResult orElse(),
  }) {
    if (updateEditPipe != null) {
      return updateEditPipe(this);
    }
    return orElse();
  }
}

abstract class _UpdateEditPipe implements ModelsEvent {
  const factory _UpdateEditPipe({required final ModelPipe pipe}) =
      _$_UpdateEditPipe;

  ModelPipe get pipe;
  @JsonKey(ignore: true)
  _$$_UpdateEditPipeCopyWith<_$_UpdateEditPipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletePipeCopyWith<$Res> {
  factory _$$_DeletePipeCopyWith(
          _$_DeletePipe value, $Res Function(_$_DeletePipe) then) =
      __$$_DeletePipeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletePipeCopyWithImpl<$Res>
    extends _$ModelsEventCopyWithImpl<$Res, _$_DeletePipe>
    implements _$$_DeletePipeCopyWith<$Res> {
  __$$_DeletePipeCopyWithImpl(
      _$_DeletePipe _value, $Res Function(_$_DeletePipe) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeletePipe implements _DeletePipe {
  const _$_DeletePipe();

  @override
  String toString() {
    return 'ModelsEvent.deletePipe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeletePipe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pipeIndex) startEditingPipe,
    required TResult Function() createNewPipe,
    required TResult Function(ModelPipe pipe) finishPipeEdit,
    required TResult Function(ModelPipe pipe) updateEditPipe,
    required TResult Function() deletePipe,
  }) {
    return deletePipe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pipeIndex)? startEditingPipe,
    TResult? Function()? createNewPipe,
    TResult? Function(ModelPipe pipe)? finishPipeEdit,
    TResult? Function(ModelPipe pipe)? updateEditPipe,
    TResult? Function()? deletePipe,
  }) {
    return deletePipe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pipeIndex)? startEditingPipe,
    TResult Function()? createNewPipe,
    TResult Function(ModelPipe pipe)? finishPipeEdit,
    TResult Function(ModelPipe pipe)? updateEditPipe,
    TResult Function()? deletePipe,
    required TResult orElse(),
  }) {
    if (deletePipe != null) {
      return deletePipe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartEditingPipe value) startEditingPipe,
    required TResult Function(_CreateNewPipe value) createNewPipe,
    required TResult Function(_FinishPipeEdit value) finishPipeEdit,
    required TResult Function(_UpdateEditPipe value) updateEditPipe,
    required TResult Function(_DeletePipe value) deletePipe,
  }) {
    return deletePipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartEditingPipe value)? startEditingPipe,
    TResult? Function(_CreateNewPipe value)? createNewPipe,
    TResult? Function(_FinishPipeEdit value)? finishPipeEdit,
    TResult? Function(_UpdateEditPipe value)? updateEditPipe,
    TResult? Function(_DeletePipe value)? deletePipe,
  }) {
    return deletePipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartEditingPipe value)? startEditingPipe,
    TResult Function(_CreateNewPipe value)? createNewPipe,
    TResult Function(_FinishPipeEdit value)? finishPipeEdit,
    TResult Function(_UpdateEditPipe value)? updateEditPipe,
    TResult Function(_DeletePipe value)? deletePipe,
    required TResult orElse(),
  }) {
    if (deletePipe != null) {
      return deletePipe(this);
    }
    return orElse();
  }
}

abstract class _DeletePipe implements ModelsEvent {
  const factory _DeletePipe() = _$_DeletePipe;
}
