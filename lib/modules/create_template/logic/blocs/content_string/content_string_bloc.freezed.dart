// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_string_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentStringState _$ContentStringStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'normal':
      return Normal.fromJson(json);
    case 'withToken':
      return WithToken.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ContentStringState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ContentStringState {
  String get currentText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currentText) normal,
    required TResult Function(String currentText, List<Token> tokensInIt)
        withToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currentText)? normal,
    TResult? Function(String currentText, List<Token> tokensInIt)? withToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentText)? normal,
    TResult Function(String currentText, List<Token> tokensInIt)? withToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Normal value) normal,
    required TResult Function(WithToken value) withToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Normal value)? normal,
    TResult? Function(WithToken value)? withToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Normal value)? normal,
    TResult Function(WithToken value)? withToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentStringStateCopyWith<ContentStringState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentStringStateCopyWith<$Res> {
  factory $ContentStringStateCopyWith(
          ContentStringState value, $Res Function(ContentStringState) then) =
      _$ContentStringStateCopyWithImpl<$Res, ContentStringState>;
  @useResult
  $Res call({String currentText});
}

/// @nodoc
class _$ContentStringStateCopyWithImpl<$Res, $Val extends ContentStringState>
    implements $ContentStringStateCopyWith<$Res> {
  _$ContentStringStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentText = null,
  }) {
    return _then(_value.copyWith(
      currentText: null == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NormalCopyWith<$Res>
    implements $ContentStringStateCopyWith<$Res> {
  factory _$$NormalCopyWith(_$Normal value, $Res Function(_$Normal) then) =
      __$$NormalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentText});
}

/// @nodoc
class __$$NormalCopyWithImpl<$Res>
    extends _$ContentStringStateCopyWithImpl<$Res, _$Normal>
    implements _$$NormalCopyWith<$Res> {
  __$$NormalCopyWithImpl(_$Normal _value, $Res Function(_$Normal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentText = null,
  }) {
    return _then(_$Normal(
      currentText: null == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Normal implements Normal {
  const _$Normal({required this.currentText, final String? $type})
      : $type = $type ?? 'normal';

  factory _$Normal.fromJson(Map<String, dynamic> json) =>
      _$$NormalFromJson(json);

  @override
  final String currentText;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ContentStringState.normal(currentText: $currentText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Normal &&
            (identical(other.currentText, currentText) ||
                other.currentText == currentText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NormalCopyWith<_$Normal> get copyWith =>
      __$$NormalCopyWithImpl<_$Normal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currentText) normal,
    required TResult Function(String currentText, List<Token> tokensInIt)
        withToken,
  }) {
    return normal(currentText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currentText)? normal,
    TResult? Function(String currentText, List<Token> tokensInIt)? withToken,
  }) {
    return normal?.call(currentText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentText)? normal,
    TResult Function(String currentText, List<Token> tokensInIt)? withToken,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(currentText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Normal value) normal,
    required TResult Function(WithToken value) withToken,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Normal value)? normal,
    TResult? Function(WithToken value)? withToken,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Normal value)? normal,
    TResult Function(WithToken value)? withToken,
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

abstract class Normal implements ContentStringState {
  const factory Normal({required final String currentText}) = _$Normal;

  factory Normal.fromJson(Map<String, dynamic> json) = _$Normal.fromJson;

  @override
  String get currentText;
  @override
  @JsonKey(ignore: true)
  _$$NormalCopyWith<_$Normal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WithTokenCopyWith<$Res>
    implements $ContentStringStateCopyWith<$Res> {
  factory _$$WithTokenCopyWith(
          _$WithToken value, $Res Function(_$WithToken) then) =
      __$$WithTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentText, List<Token> tokensInIt});
}

/// @nodoc
class __$$WithTokenCopyWithImpl<$Res>
    extends _$ContentStringStateCopyWithImpl<$Res, _$WithToken>
    implements _$$WithTokenCopyWith<$Res> {
  __$$WithTokenCopyWithImpl(
      _$WithToken _value, $Res Function(_$WithToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentText = null,
    Object? tokensInIt = null,
  }) {
    return _then(_$WithToken(
      currentText: null == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String,
      tokensInIt: null == tokensInIt
          ? _value._tokensInIt
          : tokensInIt // ignore: cast_nullable_to_non_nullable
              as List<Token>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithToken implements WithToken {
  const _$WithToken(
      {required this.currentText,
      required final List<Token> tokensInIt,
      final String? $type})
      : _tokensInIt = tokensInIt,
        $type = $type ?? 'withToken';

  factory _$WithToken.fromJson(Map<String, dynamic> json) =>
      _$$WithTokenFromJson(json);

  @override
  final String currentText;
  final List<Token> _tokensInIt;
  @override
  List<Token> get tokensInIt {
    if (_tokensInIt is EqualUnmodifiableListView) return _tokensInIt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokensInIt);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ContentStringState.withToken(currentText: $currentText, tokensInIt: $tokensInIt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithToken &&
            (identical(other.currentText, currentText) ||
                other.currentText == currentText) &&
            const DeepCollectionEquality()
                .equals(other._tokensInIt, _tokensInIt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentText,
      const DeepCollectionEquality().hash(_tokensInIt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithTokenCopyWith<_$WithToken> get copyWith =>
      __$$WithTokenCopyWithImpl<_$WithToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currentText) normal,
    required TResult Function(String currentText, List<Token> tokensInIt)
        withToken,
  }) {
    return withToken(currentText, tokensInIt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currentText)? normal,
    TResult? Function(String currentText, List<Token> tokensInIt)? withToken,
  }) {
    return withToken?.call(currentText, tokensInIt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentText)? normal,
    TResult Function(String currentText, List<Token> tokensInIt)? withToken,
    required TResult orElse(),
  }) {
    if (withToken != null) {
      return withToken(currentText, tokensInIt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Normal value) normal,
    required TResult Function(WithToken value) withToken,
  }) {
    return withToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Normal value)? normal,
    TResult? Function(WithToken value)? withToken,
  }) {
    return withToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Normal value)? normal,
    TResult Function(WithToken value)? withToken,
    required TResult orElse(),
  }) {
    if (withToken != null) {
      return withToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WithTokenToJson(
      this,
    );
  }
}

abstract class WithToken implements ContentStringState {
  const factory WithToken(
      {required final String currentText,
      required final List<Token> tokensInIt}) = _$WithToken;

  factory WithToken.fromJson(Map<String, dynamic> json) = _$WithToken.fromJson;

  @override
  String get currentText;
  List<Token> get tokensInIt;
  @override
  @JsonKey(ignore: true)
  _$$WithTokenCopyWith<_$WithToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContentStringEvent {
  String get newText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newText) registerNormalText,
    required TResult Function(String newText, List<Token> tokens)
        registerTextWithTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newText)? registerNormalText,
    TResult? Function(String newText, List<Token> tokens)?
        registerTextWithTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newText)? registerNormalText,
    TResult Function(String newText, List<Token> tokens)?
        registerTextWithTokens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterNormalText value) registerNormalText,
    required TResult Function(_RegisterTextWithTokens value)
        registerTextWithTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterNormalText value)? registerNormalText,
    TResult? Function(_RegisterTextWithTokens value)? registerTextWithTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterNormalText value)? registerNormalText,
    TResult Function(_RegisterTextWithTokens value)? registerTextWithTokens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentStringEventCopyWith<ContentStringEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentStringEventCopyWith<$Res> {
  factory $ContentStringEventCopyWith(
          ContentStringEvent value, $Res Function(ContentStringEvent) then) =
      _$ContentStringEventCopyWithImpl<$Res, ContentStringEvent>;
  @useResult
  $Res call({String newText});
}

/// @nodoc
class _$ContentStringEventCopyWithImpl<$Res, $Val extends ContentStringEvent>
    implements $ContentStringEventCopyWith<$Res> {
  _$ContentStringEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newText = null,
  }) {
    return _then(_value.copyWith(
      newText: null == newText
          ? _value.newText
          : newText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterNormalTextCopyWith<$Res>
    implements $ContentStringEventCopyWith<$Res> {
  factory _$$_RegisterNormalTextCopyWith(_$_RegisterNormalText value,
          $Res Function(_$_RegisterNormalText) then) =
      __$$_RegisterNormalTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String newText});
}

/// @nodoc
class __$$_RegisterNormalTextCopyWithImpl<$Res>
    extends _$ContentStringEventCopyWithImpl<$Res, _$_RegisterNormalText>
    implements _$$_RegisterNormalTextCopyWith<$Res> {
  __$$_RegisterNormalTextCopyWithImpl(
      _$_RegisterNormalText _value, $Res Function(_$_RegisterNormalText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newText = null,
  }) {
    return _then(_$_RegisterNormalText(
      newText: null == newText
          ? _value.newText
          : newText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterNormalText implements _RegisterNormalText {
  const _$_RegisterNormalText({required this.newText});

  @override
  final String newText;

  @override
  String toString() {
    return 'ContentStringEvent.registerNormalText(newText: $newText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterNormalText &&
            (identical(other.newText, newText) || other.newText == newText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterNormalTextCopyWith<_$_RegisterNormalText> get copyWith =>
      __$$_RegisterNormalTextCopyWithImpl<_$_RegisterNormalText>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newText) registerNormalText,
    required TResult Function(String newText, List<Token> tokens)
        registerTextWithTokens,
  }) {
    return registerNormalText(newText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newText)? registerNormalText,
    TResult? Function(String newText, List<Token> tokens)?
        registerTextWithTokens,
  }) {
    return registerNormalText?.call(newText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newText)? registerNormalText,
    TResult Function(String newText, List<Token> tokens)?
        registerTextWithTokens,
    required TResult orElse(),
  }) {
    if (registerNormalText != null) {
      return registerNormalText(newText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterNormalText value) registerNormalText,
    required TResult Function(_RegisterTextWithTokens value)
        registerTextWithTokens,
  }) {
    return registerNormalText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterNormalText value)? registerNormalText,
    TResult? Function(_RegisterTextWithTokens value)? registerTextWithTokens,
  }) {
    return registerNormalText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterNormalText value)? registerNormalText,
    TResult Function(_RegisterTextWithTokens value)? registerTextWithTokens,
    required TResult orElse(),
  }) {
    if (registerNormalText != null) {
      return registerNormalText(this);
    }
    return orElse();
  }
}

abstract class _RegisterNormalText implements ContentStringEvent {
  const factory _RegisterNormalText({required final String newText}) =
      _$_RegisterNormalText;

  @override
  String get newText;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterNormalTextCopyWith<_$_RegisterNormalText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterTextWithTokensCopyWith<$Res>
    implements $ContentStringEventCopyWith<$Res> {
  factory _$$_RegisterTextWithTokensCopyWith(_$_RegisterTextWithTokens value,
          $Res Function(_$_RegisterTextWithTokens) then) =
      __$$_RegisterTextWithTokensCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String newText, List<Token> tokens});
}

/// @nodoc
class __$$_RegisterTextWithTokensCopyWithImpl<$Res>
    extends _$ContentStringEventCopyWithImpl<$Res, _$_RegisterTextWithTokens>
    implements _$$_RegisterTextWithTokensCopyWith<$Res> {
  __$$_RegisterTextWithTokensCopyWithImpl(_$_RegisterTextWithTokens _value,
      $Res Function(_$_RegisterTextWithTokens) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newText = null,
    Object? tokens = null,
  }) {
    return _then(_$_RegisterTextWithTokens(
      newText: null == newText
          ? _value.newText
          : newText // ignore: cast_nullable_to_non_nullable
              as String,
      tokens: null == tokens
          ? _value._tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
    ));
  }
}

/// @nodoc

class _$_RegisterTextWithTokens implements _RegisterTextWithTokens {
  const _$_RegisterTextWithTokens(
      {required this.newText, required final List<Token> tokens})
      : _tokens = tokens;

  @override
  final String newText;
  final List<Token> _tokens;
  @override
  List<Token> get tokens {
    if (_tokens is EqualUnmodifiableListView) return _tokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokens);
  }

  @override
  String toString() {
    return 'ContentStringEvent.registerTextWithTokens(newText: $newText, tokens: $tokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterTextWithTokens &&
            (identical(other.newText, newText) || other.newText == newText) &&
            const DeepCollectionEquality().equals(other._tokens, _tokens));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, newText, const DeepCollectionEquality().hash(_tokens));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterTextWithTokensCopyWith<_$_RegisterTextWithTokens> get copyWith =>
      __$$_RegisterTextWithTokensCopyWithImpl<_$_RegisterTextWithTokens>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newText) registerNormalText,
    required TResult Function(String newText, List<Token> tokens)
        registerTextWithTokens,
  }) {
    return registerTextWithTokens(newText, tokens);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newText)? registerNormalText,
    TResult? Function(String newText, List<Token> tokens)?
        registerTextWithTokens,
  }) {
    return registerTextWithTokens?.call(newText, tokens);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newText)? registerNormalText,
    TResult Function(String newText, List<Token> tokens)?
        registerTextWithTokens,
    required TResult orElse(),
  }) {
    if (registerTextWithTokens != null) {
      return registerTextWithTokens(newText, tokens);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterNormalText value) registerNormalText,
    required TResult Function(_RegisterTextWithTokens value)
        registerTextWithTokens,
  }) {
    return registerTextWithTokens(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterNormalText value)? registerNormalText,
    TResult? Function(_RegisterTextWithTokens value)? registerTextWithTokens,
  }) {
    return registerTextWithTokens?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterNormalText value)? registerNormalText,
    TResult Function(_RegisterTextWithTokens value)? registerTextWithTokens,
    required TResult orElse(),
  }) {
    if (registerTextWithTokens != null) {
      return registerTextWithTokens(this);
    }
    return orElse();
  }
}

abstract class _RegisterTextWithTokens implements ContentStringEvent {
  const factory _RegisterTextWithTokens(
      {required final String newText,
      required final List<Token> tokens}) = _$_RegisterTextWithTokens;

  @override
  String get newText;
  List<Token> get tokens;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterTextWithTokensCopyWith<_$_RegisterTextWithTokens> get copyWith =>
      throw _privateConstructorUsedError;
}
