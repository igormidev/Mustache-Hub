// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_string_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Normal _$$NormalFromJson(Map<String, dynamic> json) => _$Normal(
      currentText: json['currentText'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NormalToJson(_$Normal instance) => <String, dynamic>{
      'currentText': instance.currentText,
      'runtimeType': instance.$type,
    };

_$WithToken _$$WithTokenFromJson(Map<String, dynamic> json) => _$WithToken(
      currentText: json['currentText'] as String,
      tokensInIt: (json['tokensInIt'] as List<dynamic>)
          .map((e) => Token.fromJson(e as String))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WithTokenToJson(_$WithToken instance) =>
    <String, dynamic>{
      'currentText': instance.currentText,
      'tokensInIt': instance.tokensInIt,
      'runtimeType': instance.$type,
    };
