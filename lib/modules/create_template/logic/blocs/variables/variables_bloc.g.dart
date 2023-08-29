// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variables_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Normal _$$NormalFromJson(Map<String, dynamic> json) => _$Normal(
      textPipes: (json['textPipes'] as List<dynamic>)
          .map((e) => TextPipe.fromJson(e as String))
          .toList(),
      booleanPipes: (json['booleanPipes'] as List<dynamic>)
          .map((e) => BooleanPipe.fromJson(e as String))
          .toList(),
      modelPipes: (json['modelPipes'] as List<dynamic>)
          .map((e) => ModelPipe.fromJson(e as String))
          .toList(),
    );

Map<String, dynamic> _$$NormalToJson(_$Normal instance) => <String, dynamic>{
      'textPipes': instance.textPipes,
      'booleanPipes': instance.booleanPipes,
      'modelPipes': instance.modelPipes,
    };
