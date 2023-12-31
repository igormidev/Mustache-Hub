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

/// @nodoc
mixin _$TokenIdentifier {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) text,
    required TResult Function(String name) boolean,
    required TResult Function(String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? text,
    TResult? Function(String name)? boolean,
    TResult? Function(String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? text,
    TResult Function(String name)? boolean,
    TResult Function(String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
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

class _$TextTokenIdentifierImpl implements TextTokenIdentifier {
  _$TextTokenIdentifierImpl({required this.name});

  @override
  final String name;

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
    required TResult Function(String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)
        model,
  }) {
    return text(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? text,
    TResult? Function(String name)? boolean,
    TResult? Function(String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
  }) {
    return text?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? text,
    TResult Function(String name)? boolean,
    TResult Function(String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
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
}

abstract class TextTokenIdentifier implements TokenIdentifier {
  factory TextTokenIdentifier({required final String name}) =
      _$TextTokenIdentifierImpl;

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

class _$BooleanTokenIdentifierImpl implements BooleanTokenIdentifier {
  _$BooleanTokenIdentifierImpl({required this.name});

  @override
  final String name;

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
    required TResult Function(String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)
        model,
  }) {
    return boolean(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? text,
    TResult? Function(String name)? boolean,
    TResult? Function(String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
  }) {
    return boolean?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? text,
    TResult Function(String name)? boolean,
    TResult Function(String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
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
}

abstract class BooleanTokenIdentifier implements TokenIdentifier {
  factory BooleanTokenIdentifier({required final String name}) =
      _$BooleanTokenIdentifierImpl;

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
      List<String> textsNames,
      List<String> booleanNames,
      List<String> subModelsNames});
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
    Object? textsNames = null,
    Object? booleanNames = null,
    Object? subModelsNames = null,
  }) {
    return _then(_$ModelTokenIdentifierImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      textsNames: null == textsNames
          ? _value._textsNames
          : textsNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      booleanNames: null == booleanNames
          ? _value._booleanNames
          : booleanNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subModelsNames: null == subModelsNames
          ? _value._subModelsNames
          : subModelsNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ModelTokenIdentifierImpl implements ModelTokenIdentifier {
  _$ModelTokenIdentifierImpl(
      {required this.name,
      required final List<String> textsNames,
      required final List<String> booleanNames,
      required final List<String> subModelsNames})
      : _textsNames = textsNames,
        _booleanNames = booleanNames,
        _subModelsNames = subModelsNames;

  @override
  final String name;
  final List<String> _textsNames;
  @override
  List<String> get textsNames {
    if (_textsNames is EqualUnmodifiableListView) return _textsNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textsNames);
  }

  final List<String> _booleanNames;
  @override
  List<String> get booleanNames {
    if (_booleanNames is EqualUnmodifiableListView) return _booleanNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_booleanNames);
  }

  final List<String> _subModelsNames;
  @override
  List<String> get subModelsNames {
    if (_subModelsNames is EqualUnmodifiableListView) return _subModelsNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subModelsNames);
  }

  @override
  String toString() {
    return 'TokenIdentifier.model(name: $name, textsNames: $textsNames, booleanNames: $booleanNames, subModelsNames: $subModelsNames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelTokenIdentifierImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._textsNames, _textsNames) &&
            const DeepCollectionEquality()
                .equals(other._booleanNames, _booleanNames) &&
            const DeepCollectionEquality()
                .equals(other._subModelsNames, _subModelsNames));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_textsNames),
      const DeepCollectionEquality().hash(_booleanNames),
      const DeepCollectionEquality().hash(_subModelsNames));

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
    required TResult Function(String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)
        model,
  }) {
    return model(name, textsNames, booleanNames, subModelsNames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? text,
    TResult? Function(String name)? boolean,
    TResult? Function(String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
  }) {
    return model?.call(name, textsNames, booleanNames, subModelsNames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? text,
    TResult Function(String name)? boolean,
    TResult Function(String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(name, textsNames, booleanNames, subModelsNames);
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
}

abstract class ModelTokenIdentifier implements TokenIdentifier {
  factory ModelTokenIdentifier(
      {required final String name,
      required final List<String> textsNames,
      required final List<String> booleanNames,
      required final List<String> subModelsNames}) = _$ModelTokenIdentifierImpl;

  @override
  String get name;
  List<String> get textsNames;
  List<String> get booleanNames;
  List<String> get subModelsNames;
  @override
  @JsonKey(ignore: true)
  _$$ModelTokenIdentifierImplCopyWith<_$ModelTokenIdentifierImpl>
      get copyWith => throw _privateConstructorUsedError;
}
