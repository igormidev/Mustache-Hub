part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.normal({
    required ThemeColor color,
    required Brightness brightness,
  }) = _Normal;

  factory ThemeState.fromJson(Map<String, dynamic> json) =>
      _$ThemeStateFromJson(json);
}

enum ThemeColor {
  cyan,
  brown,
  deepOrange,
  green,
  indigo,
  lime,
  orange,
  purple,
  red,
  yellow,
  teal,
  blueGrey,
  deepPurple;

  Color get color => switch (this) {
        ThemeColor.cyan => Colors.cyan,
        ThemeColor.brown => Colors.brown,
        ThemeColor.deepOrange => Colors.deepOrange[400]!,
        ThemeColor.green => Colors.green[400]!,
        ThemeColor.indigo => Colors.indigo,
        ThemeColor.lime => Colors.lime,
        ThemeColor.orange => Colors.orange,
        ThemeColor.purple => Colors.purple,
        ThemeColor.red => Colors.red[400]!,
        ThemeColor.yellow => Colors.yellow[400]!,
        ThemeColor.teal => Colors.teal,
        ThemeColor.blueGrey => Colors.blueGrey,
        ThemeColor.deepPurple => Colors.deepPurple,
      };

  const ThemeColor();
}
