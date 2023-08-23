// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeState _$ThemeStateFromJson(Map<String, dynamic> json) {
  return _Normal.fromJson(json);
}

/// @nodoc
mixin _$ThemeState {
  ThemeColor get color => throw _privateConstructorUsedError;
  Brightness get brightness => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeColor color, Brightness brightness) normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeColor color, Brightness brightness)? normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeColor color, Brightness brightness)? normal,
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
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({ThemeColor color, Brightness brightness});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? brightness = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ThemeColor,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NormalCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$$_NormalCopyWith(_$_Normal value, $Res Function(_$_Normal) then) =
      __$$_NormalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeColor color, Brightness brightness});
}

/// @nodoc
class __$$_NormalCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_Normal>
    implements _$$_NormalCopyWith<$Res> {
  __$$_NormalCopyWithImpl(_$_Normal _value, $Res Function(_$_Normal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? brightness = null,
  }) {
    return _then(_$_Normal(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ThemeColor,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Normal implements _Normal {
  const _$_Normal({required this.color, required this.brightness});

  factory _$_Normal.fromJson(Map<String, dynamic> json) =>
      _$$_NormalFromJson(json);

  @override
  final ThemeColor color;
  @override
  final Brightness brightness;

  @override
  String toString() {
    return 'ThemeState.normal(color: $color, brightness: $brightness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Normal &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, brightness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NormalCopyWith<_$_Normal> get copyWith =>
      __$$_NormalCopyWithImpl<_$_Normal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeColor color, Brightness brightness) normal,
  }) {
    return normal(color, brightness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeColor color, Brightness brightness)? normal,
  }) {
    return normal?.call(color, brightness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeColor color, Brightness brightness)? normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(color, brightness);
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

abstract class _Normal implements ThemeState {
  const factory _Normal(
      {required final ThemeColor color,
      required final Brightness brightness}) = _$_Normal;

  factory _Normal.fromJson(Map<String, dynamic> json) = _$_Normal.fromJson;

  @override
  ThemeColor get color;
  @override
  Brightness get brightness;
  @override
  @JsonKey(ignore: true)
  _$$_NormalCopyWith<_$_Normal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeColor color) changeColor,
    required TResult Function(Brightness brightness) changeBrightness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeColor color)? changeColor,
    TResult? Function(Brightness brightness)? changeBrightness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeColor color)? changeColor,
    TResult Function(Brightness brightness)? changeBrightness,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeBrightness value) changeBrightness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeBrightness value)? changeBrightness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeBrightness value)? changeBrightness,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeColorCopyWith<$Res> {
  factory _$$_ChangeColorCopyWith(
          _$_ChangeColor value, $Res Function(_$_ChangeColor) then) =
      __$$_ChangeColorCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeColor color});
}

/// @nodoc
class __$$_ChangeColorCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_ChangeColor>
    implements _$$_ChangeColorCopyWith<$Res> {
  __$$_ChangeColorCopyWithImpl(
      _$_ChangeColor _value, $Res Function(_$_ChangeColor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$_ChangeColor(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ThemeColor,
    ));
  }
}

/// @nodoc

class _$_ChangeColor implements _ChangeColor {
  const _$_ChangeColor({required this.color});

  @override
  final ThemeColor color;

  @override
  String toString() {
    return 'ThemeEvent.changeColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeColor &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeColorCopyWith<_$_ChangeColor> get copyWith =>
      __$$_ChangeColorCopyWithImpl<_$_ChangeColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeColor color) changeColor,
    required TResult Function(Brightness brightness) changeBrightness,
  }) {
    return changeColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeColor color)? changeColor,
    TResult? Function(Brightness brightness)? changeBrightness,
  }) {
    return changeColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeColor color)? changeColor,
    TResult Function(Brightness brightness)? changeBrightness,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeBrightness value) changeBrightness,
  }) {
    return changeColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeBrightness value)? changeBrightness,
  }) {
    return changeColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeBrightness value)? changeBrightness,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(this);
    }
    return orElse();
  }
}

abstract class _ChangeColor implements ThemeEvent {
  const factory _ChangeColor({required final ThemeColor color}) =
      _$_ChangeColor;

  ThemeColor get color;
  @JsonKey(ignore: true)
  _$$_ChangeColorCopyWith<_$_ChangeColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeBrightnessCopyWith<$Res> {
  factory _$$_ChangeBrightnessCopyWith(
          _$_ChangeBrightness value, $Res Function(_$_ChangeBrightness) then) =
      __$$_ChangeBrightnessCopyWithImpl<$Res>;
  @useResult
  $Res call({Brightness brightness});
}

/// @nodoc
class __$$_ChangeBrightnessCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_ChangeBrightness>
    implements _$$_ChangeBrightnessCopyWith<$Res> {
  __$$_ChangeBrightnessCopyWithImpl(
      _$_ChangeBrightness _value, $Res Function(_$_ChangeBrightness) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
  }) {
    return _then(_$_ChangeBrightness(
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ));
  }
}

/// @nodoc

class _$_ChangeBrightness implements _ChangeBrightness {
  const _$_ChangeBrightness({required this.brightness});

  @override
  final Brightness brightness;

  @override
  String toString() {
    return 'ThemeEvent.changeBrightness(brightness: $brightness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeBrightness &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brightness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeBrightnessCopyWith<_$_ChangeBrightness> get copyWith =>
      __$$_ChangeBrightnessCopyWithImpl<_$_ChangeBrightness>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeColor color) changeColor,
    required TResult Function(Brightness brightness) changeBrightness,
  }) {
    return changeBrightness(brightness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeColor color)? changeColor,
    TResult? Function(Brightness brightness)? changeBrightness,
  }) {
    return changeBrightness?.call(brightness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeColor color)? changeColor,
    TResult Function(Brightness brightness)? changeBrightness,
    required TResult orElse(),
  }) {
    if (changeBrightness != null) {
      return changeBrightness(brightness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeBrightness value) changeBrightness,
  }) {
    return changeBrightness(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeBrightness value)? changeBrightness,
  }) {
    return changeBrightness?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeBrightness value)? changeBrightness,
    required TResult orElse(),
  }) {
    if (changeBrightness != null) {
      return changeBrightness(this);
    }
    return orElse();
  }
}

abstract class _ChangeBrightness implements ThemeEvent {
  const factory _ChangeBrightness({required final Brightness brightness}) =
      _$_ChangeBrightness;

  Brightness get brightness;
  @JsonKey(ignore: true)
  _$$_ChangeBrightnessCopyWith<_$_ChangeBrightness> get copyWith =>
      throw _privateConstructorUsedError;
}
