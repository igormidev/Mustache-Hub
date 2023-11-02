// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VersionState {
  PackageVersion get latestVersion => throw _privateConstructorUsedError;
  PackageVersion get newVersion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VersionStateCopyWith<VersionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionStateCopyWith<$Res> {
  factory $VersionStateCopyWith(
          VersionState value, $Res Function(VersionState) then) =
      _$VersionStateCopyWithImpl<$Res, VersionState>;
  @useResult
  $Res call({PackageVersion latestVersion, PackageVersion newVersion});
}

/// @nodoc
class _$VersionStateCopyWithImpl<$Res, $Val extends VersionState>
    implements $VersionStateCopyWith<$Res> {
  _$VersionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestVersion = null,
    Object? newVersion = null,
  }) {
    return _then(_value.copyWith(
      latestVersion: null == latestVersion
          ? _value.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as PackageVersion,
      newVersion: null == newVersion
          ? _value.newVersion
          : newVersion // ignore: cast_nullable_to_non_nullable
              as PackageVersion,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersionStateImplCopyWith<$Res>
    implements $VersionStateCopyWith<$Res> {
  factory _$$VersionStateImplCopyWith(
          _$VersionStateImpl value, $Res Function(_$VersionStateImpl) then) =
      __$$VersionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PackageVersion latestVersion, PackageVersion newVersion});
}

/// @nodoc
class __$$VersionStateImplCopyWithImpl<$Res>
    extends _$VersionStateCopyWithImpl<$Res, _$VersionStateImpl>
    implements _$$VersionStateImplCopyWith<$Res> {
  __$$VersionStateImplCopyWithImpl(
      _$VersionStateImpl _value, $Res Function(_$VersionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestVersion = null,
    Object? newVersion = null,
  }) {
    return _then(_$VersionStateImpl(
      latestVersion: null == latestVersion
          ? _value.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as PackageVersion,
      newVersion: null == newVersion
          ? _value.newVersion
          : newVersion // ignore: cast_nullable_to_non_nullable
              as PackageVersion,
    ));
  }
}

/// @nodoc

class _$VersionStateImpl implements _VersionState {
  _$VersionStateImpl({required this.latestVersion, required this.newVersion});

  @override
  final PackageVersion latestVersion;
  @override
  final PackageVersion newVersion;

  @override
  String toString() {
    return 'VersionState(latestVersion: $latestVersion, newVersion: $newVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionStateImpl &&
            (identical(other.latestVersion, latestVersion) ||
                other.latestVersion == latestVersion) &&
            (identical(other.newVersion, newVersion) ||
                other.newVersion == newVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latestVersion, newVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionStateImplCopyWith<_$VersionStateImpl> get copyWith =>
      __$$VersionStateImplCopyWithImpl<_$VersionStateImpl>(this, _$identity);
}

abstract class _VersionState implements VersionState {
  factory _VersionState(
      {required final PackageVersion latestVersion,
      required final PackageVersion newVersion}) = _$VersionStateImpl;

  @override
  PackageVersion get latestVersion;
  @override
  PackageVersion get newVersion;
  @override
  @JsonKey(ignore: true)
  _$$VersionStateImplCopyWith<_$VersionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
