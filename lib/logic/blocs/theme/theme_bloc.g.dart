// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Normal _$$_NormalFromJson(Map<String, dynamic> json) => _$_Normal(
      color: $enumDecode(_$ThemeColorEnumMap, json['color']),
      brightness: $enumDecode(_$BrightnessEnumMap, json['brightness']),
    );

Map<String, dynamic> _$$_NormalToJson(_$_Normal instance) => <String, dynamic>{
      'color': _$ThemeColorEnumMap[instance.color]!,
      'brightness': _$BrightnessEnumMap[instance.brightness]!,
    };

const _$ThemeColorEnumMap = {
  ThemeColor.cyan: 'cyan',
  ThemeColor.brown: 'brown',
  ThemeColor.deepOrange: 'deepOrange',
  ThemeColor.green: 'green',
  ThemeColor.indigo: 'indigo',
  ThemeColor.lime: 'lime',
  ThemeColor.orange: 'orange',
  ThemeColor.purple: 'purple',
  ThemeColor.red: 'red',
  ThemeColor.yellow: 'yellow',
  ThemeColor.teal: 'teal',
  ThemeColor.blueGrey: 'blueGrey',
  ThemeColor.deepPurple: 'deepPurple',
};

const _$BrightnessEnumMap = {
  Brightness.dark: 'dark',
  Brightness.light: 'light',
};
