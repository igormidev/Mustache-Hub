// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Normal _$$_NormalFromJson(Map<String, dynamic> json) => _$_Normal(
      colorValue: json['colorValue'] as int,
      brightness: $enumDecode(_$BrightnessEnumMap, json['brightness']),
    );

Map<String, dynamic> _$$_NormalToJson(_$_Normal instance) => <String, dynamic>{
      'colorValue': instance.colorValue,
      'brightness': _$BrightnessEnumMap[instance.brightness]!,
    };

const _$BrightnessEnumMap = {
  Brightness.dark: 'dark',
  Brightness.light: 'light',
};
