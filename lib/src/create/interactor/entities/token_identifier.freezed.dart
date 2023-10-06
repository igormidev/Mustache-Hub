// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_identifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenIdentifier _$TokenIdentifierFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'text':
      return TextTokenIdentifier.fromJson(json);
    case 'boolean':
      return BooleanTokenIdentifier.fromJson(json);
    case 'model':
      return ModelTokenIdentifier.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TokenIdentifier',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TokenIdentifier {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) text,
    required TResult Function(String name) boolean,
    required TResult Function(
            String name,
            List<TextTokenIdentifier> texts,
            List<BooleanTokenIdentifier> boolean,
            List<ModelTokenIdentifier> subModels)
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? text,
    TResult? Function(String name)? boolean,
    TResult? Function(
            String name,
            List<TextTokenIdentifier> texts,
            List<BooleanTokenIdentifier> boolean,
            List<ModelTokenIdentifier> subModels)?
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? text,
    TResult Function(String name)? boolean,
    TResult Function(
            String name,
            List<TextTokenIdentifier> texts,
            List<BooleanTokenIdentifier> boolean,
            List<ModelTokenIdentifier> subModels)?
        model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextTokenIdentifier value) text,
    required TResult Function(BooleanTokenIdentifier value) boolean,
    required TResult Function(ModelTokenIdentifier value) model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextTokenIdentifier value)? text,
    TResult? Function(BooleanTokenIdentifier value)? boolean,
    TResult? Function(ModelTokenIdentifier value)? model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextTokenIdentifier value)? text,
    TResult Function(BooleanTokenIdentifier value)? boolean,
    TResult Function(ModelTokenIdentifier value)? model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenIdentifierCopyWith<TokenIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenIdentifierCopyWith<$Res> {
  factory $TokenIdentifierCopyWith(
          TokenIdentifier value, $Res Function(TokenIdentifier) then) =
      _$TokenIdentifierCopyWithImpl<$Res, TokenIdentifier>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$TokenIdentifierCopyWithImpl<$Res, $Val extends TokenIdentifier>
    implements $TokenIdentifierCopyWith<$Res> {
  _$TokenIdentifierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextTokenIdentifierImplCopyWith<$Res>
    implements $TokenIdentifierCopyWith<$Res> {
  factory _$$TextTokenIdentifierImplCopyWith(_$TextTokenIdentifierImpl value,
          $Res Function(_$TextTokenIdentifierImpl) then) =
      __$$TextTokenIdentifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$TextTokenIdentifierImplCopyWithImpl<$Res>
    extends _$TokenIdentifierCopyWithImpl<$Res, _$TextTokenIdentifierImpl>
    implements _$$TextTokenIdentifierImplCopyWith<$Res> {
  __$$TextTokenIdentifierImplCopyWithImpl(_$TextTokenIdentifierImpl _value,
      $Res Function(_$TextTokenIdentifierImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$TextTokenIdentifierImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextTokenIdentifierImpl implements TextTokenIdentifier {
  _$TextTokenIdentifierImpl({required this.name, final String? $type})
      : $type = $type ?? 'text';

  factory _$TextTokenIdentifierImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextTokenIdentifierImplFromJson(json);

  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TokenIdentifier.text(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextTokenIdentifierImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextTokenIdentifierImplCopyWith<_$TextTokenIdentifierImpl> get copyWith =>
      __$$TextTokenIdentifierImplCopyWithImpl<_$TextTokenIdentifierImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) text,
    required TResult Function(String name) boolean,
    required TResult Function(
            String name,
            List<TextTokenIdentifier> texts,
            List<BooleanTokenIdentifier> boolean,
            List<ModelTokenIdentifier> subModels)
        model,
  }) {
    return text(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? text,
    TResult? Function(String name)? boolean,
    TResult? Function(
            String name,
            List<TextTokenIdentifier> texts,
            List<BooleanTokenIdentifier> boolean,
            List<ModelTokenIdentifier> subModels)?
        model,
  }) {
    return text?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? text,
    TResult Function(String name)? boolean,
    TResult Function(
            String name,
            List<TextTokenIdentifier> texts,
            List<BooleanTokenIdentifier> boolean,
            List<ModelTokenIdentifier> subModels)?
        model,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextTokenIdentifier value) text,
    required TResult Function(BooleanTokenIdentifier value) boolean,
    required TResult Function(ModelTokenIdentifier value) model,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextTokenIdentifier value)? text,
    TResult? Function(BooleanTokenIdentifier value)? boolean,
    TResult? Function(ModelTokenIdentifier value)? model,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextTokenIdentifier value)? text,
    TResult Function(BooleanTokenIdentifier value)? boolean,
    TResult Function(ModelTokenIdentifier value)? model,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextTokenIdentifierImplToJson(
      this,
    );
  }
}

abstract class TextTokenIdentifier implements TokenIdentifier {
  factory TextTokenIdentifier({required final String name}) =
      _$TextTokenIdentifierImpl;

  factory TextTokenIdentifier.fromJson(Map<String, dynamic> json) =
      _$TextTokenIdentifierImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TextTokenIdentifierImplCopyWith<_$TextTokenIdentifierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BooleanTokenIdentifierImplCopyWith<$Res>
    implements $TokenIdentifierCopyWith<$Res> {
  factory _$$BooleanTokenIdentifierImplCopyWith(
          _$BooleanTokenIdentifierImpl value,
          $Res Function(_$BooleanTokenIdentifierImpl) then) =
      __$$BooleanTokenIdentifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$BooleanTokenIdentifierImplCopyWithImpl<$Res>
    extends _$TokenIdentifierCopyWithImpl<$Res, _$BooleanTokenIdentifierImpl>
    implements _$$BooleanTokenIdentifierImplCopyWith<$Res> {
  __$$BooleanTokenIdentifierImplCopyWithImpl(
      _$BooleanTokenIdentifierImpl _value,
      $Res Function(_$BooleanTokenIdentifierImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$BooleanTokenIdentifierImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooleanTokenIdentifierImpl implements BooleanTokenIdentifier {
  _$BooleanTokenIdentifierImpl({required this.name, final String? $type})
      : $type = $type ?? 'boolean';

  factory _$BooleanTokenIdentifierImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanTokenIdentifierImplFromJson(json);

  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TokenIdentifier.boolean(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanTokenIdentifierImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooleanTokenIdentifierImplCopyWith<_$BooleanTokenIdentifierImpl>
      get copyWith => __$$BooleanTokenIdentifierImplCopyWithImpl<
          _$BooleanTokenIdentifierImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) text,
    required TResult Function(String name) boolean,
    required TResult Function(
            String name,
            List<TextTokenIdentifier> texts,
            List<BooleanTokenIdentifier> boolean,
            List<ModelTokenIdentifier> subModels)
        model,
  }) {
    return boolean(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? text,
    TResult? Function(String name)? boolean,
    TResult? Function(
            String name,
            List<TextTokenIdentifier> texts,
            List<BooleanTokenIdentifier> boolean,
            List<ModelTokenIdentifier> subModels)?
        model,
  }) {
    return boolean?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? text,
    TResult Function(String name)? boolean,
    TResult Function(
            String name,
            List<TextTokenIdentifier> texts,
            List<BooleanTokenIdentifier> boolean,
            List<ModelTokenIdentifier> subModels)?
        model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextTokenIdentifier value) text,
    required TResult Function(BooleanTokenIdentifier value) boolean,
    required TResult Function(ModelTokenIdentifier value) model,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextTokenIdentifier value)? text,
    TResult? Function(BooleanTokenIdentifier value)? boolean,
    TResult? Function(ModelTokenIdentifier value)? model,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextTokenIdentifier value)? text,
    TResult Function(BooleanTokenIdentifier value)? boolean,
    TResult Function(ModelTokenIdentifier value)? model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanTokenIdentifierImplToJson(
      this,
    );
  }
}

abstract class BooleanTokenIdentifier implements TokenIdentifier {
  factory BooleanTokenIdentifier({required final String name}) =
      _$BooleanTokenIdentifierImpl;

  factory BooleanTokenIdentifier.fromJson(Map<String, dynamic> json) =
      _$BooleanTokenIdentifierImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$BooleanTokenIdentifierImplCopyWith<_$BooleanTokenIdentifierImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModelTokenIdentifierImplCopyWith<$Res>
    implements $TokenIdentifierCopyWith<$Res> {
  factory _$$ModelTokenIdentifierImplCopyWith(_$ModelTokenIdentifierImpl value,
          $Res Function(_$ModelTokenIdentifierImpl) then) =
      __$$ModelTokenIdentifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<TextTokenIdentifier> texts,
      List<BooleanTokenIdentifier> boolean,
      List<ModelTokenIdentifier> subModels});
}

/// @nodoc
class __$$ModelTokenIdentifierImplCopyWithImpl<$Res>
    extends _$TokenIdentifierCopyWithImpl<$Res, _$ModelTokenIdentifierImpl>
    implements _$$ModelTokenIdentifierImplCopyWith<$Res> {
  __$$ModelTokenIdentifierImplCopyWithImpl(_$ModelTokenIdentifierImpl _value,
      $Res Function(_$ModelTokenIdentifierImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? texts = null,
    Object? boolean = null,
    Object? subModels = null,
  }) {
    return _then(_$ModelTokenIdentifierImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      texts: null == texts
          ? _value._texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<TextTokenIdentifier>,
      boolean: null == boolean
          ? _value._boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as List<BooleanTokenIdentifier>,
      subModels: null == subModels
          ? _value._subModels
          : subModels // ignore: cast_nullable_to_non_nullable
              as List<ModelTokenIdentifier>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelTokenIdentifierImpl implements ModelTokenIdentifier {
  _$ModelTokenIdentifierImpl(
      {required this.name,
      required final List<TextTokenIdentifier> texts,
      required final List<BooleanTokenIdentifier> boolean,
      required final List<ModelTokenIdentifier> subModels,
      final String? $type})
      : _texts = texts,
        _boolean = boolean,
        _subModels = subModels,
        $type = $type ?? 'model';

  factory _$ModelTokenIdentifierImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelTokenIdentifierImplFromJson(json);

  @override
  final String name;
  final List<TextTokenIdentifier> _texts;
  @override
  List<TextTokenIdentifier> get texts {
    if (_texts is EqualUnmodifiableListView) return _texts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_texts);
  }

  final List<BooleanTokenIdentifier> _boolean;
  @override
  List<BooleanTokenIdentifier> get boolean {
    if (_boolean is EqualUnmodifiableListView) return _boolean;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boolean);
  }

  final List<ModelTokenIdentifier> _subModels;
  @override
  List<ModelTokenIdentifier> get subModels {
    if (_subModels is EqualUnmodifiableListView) return _subModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subModels);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TokenIdentifier.model(name: $name, texts: $texts, boolean: $boolean, subModels: $subModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelTokenIdentifierImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._texts, _texts) &&
            const DeepCollectionEquality().equals(other._boolean, _boolean) &&
            const DeepCollectionEquality()
                .equals(other._subModels, _subModels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_texts),
      const DeepCollectionEquality().hash(_boolean),
      const DeepCollectionEquality().hash(_subModels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelTokenIdentifierImplCopyWith<_$ModelTokenIdentifierImpl>
      get copyWith =>
          __$$ModelTokenIdentifierImplCopyWithImpl<_$ModelTokenIdentifierImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) text,
    required TResult Function(String name) boolean,
    required TResult Function(
            String name,
            List<TextTokenIdentifier> texts,
            List<BooleanTokenIdentifier> boolean,
            List<ModelTokenIdentifier> subModels)
        model,
  }) {
    return model(name, texts, this.boolean, subModels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? text,
    TResult? Function(String name)? boolean,
    TResult? Function(
            String name,
            List<TextTokenIdentifier> texts,
            List<BooleanTokenIdentifier> boolean,
            List<ModelTokenIdentifier> subModels)?
        model,
  }) {
    return model?.call(name, texts, this.boolean, subModels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? text,
    TResult Function(String name)? boolean,
    TResult Function(
            String name,
            List<TextTokenIdentifier> texts,
            List<BooleanTokenIdentifier> boolean,
            List<ModelTokenIdentifier> subModels)?
        model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(name, texts, this.boolean, subModels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextTokenIdentifier value) text,
    required TResult Function(BooleanTokenIdentifier value) boolean,
    required TResult Function(ModelTokenIdentifier value) model,
  }) {
    return model(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextTokenIdentifier value)? text,
    TResult? Function(BooleanTokenIdentifier value)? boolean,
    TResult? Function(ModelTokenIdentifier value)? model,
  }) {
    return model?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextTokenIdentifier value)? text,
    TResult Function(BooleanTokenIdentifier value)? boolean,
    TResult Function(ModelTokenIdentifier value)? model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelTokenIdentifierImplToJson(
      this,
    );
  }
}

abstract class ModelTokenIdentifier implements TokenIdentifier {
  factory ModelTokenIdentifier(
          {required final String name,
          required final List<TextTokenIdentifier> texts,
          required final List<BooleanTokenIdentifier> boolean,
          required final List<ModelTokenIdentifier> subModels}) =
      _$ModelTokenIdentifierImpl;

  factory ModelTokenIdentifier.fromJson(Map<String, dynamic> json) =
      _$ModelTokenIdentifierImpl.fromJson;

  @override
  String get name;
  List<TextTokenIdentifier> get texts;
  List<BooleanTokenIdentifier> get boolean;
  List<ModelTokenIdentifier> get subModels;
  @override
  @JsonKey(ignore: true)
  _$$ModelTokenIdentifierImplCopyWith<_$ModelTokenIdentifierImpl>
      get copyWith => throw _privateConstructorUsedError;
}
