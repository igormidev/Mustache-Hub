// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modules_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ModulesNavigationState {
  ENavigationPossibilities get selectedPossibility =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModulesNavigationStateCopyWith<ModulesNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModulesNavigationStateCopyWith<$Res> {
  factory $ModulesNavigationStateCopyWith(ModulesNavigationState value,
          $Res Function(ModulesNavigationState) then) =
      _$ModulesNavigationStateCopyWithImpl<$Res, ModulesNavigationState>;
  @useResult
  $Res call({ENavigationPossibilities selectedPossibility});
}

/// @nodoc
class _$ModulesNavigationStateCopyWithImpl<$Res,
        $Val extends ModulesNavigationState>
    implements $ModulesNavigationStateCopyWith<$Res> {
  _$ModulesNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPossibility = null,
  }) {
    return _then(_value.copyWith(
      selectedPossibility: null == selectedPossibility
          ? _value.selectedPossibility
          : selectedPossibility // ignore: cast_nullable_to_non_nullable
              as ENavigationPossibilities,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultImplCopyWith<$Res>
    implements $ModulesNavigationStateCopyWith<$Res> {
  factory _$$DefaultImplCopyWith(
          _$DefaultImpl value, $Res Function(_$DefaultImpl) then) =
      __$$DefaultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ENavigationPossibilities selectedPossibility});
}

/// @nodoc
class __$$DefaultImplCopyWithImpl<$Res>
    extends _$ModulesNavigationStateCopyWithImpl<$Res, _$DefaultImpl>
    implements _$$DefaultImplCopyWith<$Res> {
  __$$DefaultImplCopyWithImpl(
      _$DefaultImpl _value, $Res Function(_$DefaultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPossibility = null,
  }) {
    return _then(_$DefaultImpl(
      selectedPossibility: null == selectedPossibility
          ? _value.selectedPossibility
          : selectedPossibility // ignore: cast_nullable_to_non_nullable
              as ENavigationPossibilities,
    ));
  }
}

/// @nodoc

class _$DefaultImpl implements Default {
  _$DefaultImpl({required this.selectedPossibility});

  @override
  final ENavigationPossibilities selectedPossibility;

  @override
  String toString() {
    return 'ModulesNavigationState(selectedPossibility: $selectedPossibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultImpl &&
            (identical(other.selectedPossibility, selectedPossibility) ||
                other.selectedPossibility == selectedPossibility));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPossibility);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultImplCopyWith<_$DefaultImpl> get copyWith =>
      __$$DefaultImplCopyWithImpl<_$DefaultImpl>(this, _$identity);
}

abstract class Default implements ModulesNavigationState {
  factory Default(
          {required final ENavigationPossibilities selectedPossibility}) =
      _$DefaultImpl;

  @override
  ENavigationPossibilities get selectedPossibility;
  @override
  @JsonKey(ignore: true)
  _$$DefaultImplCopyWith<_$DefaultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
