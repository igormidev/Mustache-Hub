part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.changeColor({
    required ThemeColor color,
  }) = _ChangeColor;
  const factory ThemeEvent.changeBrightness({
    required Brightness brightness,
  }) = _ChangeBrightness;
}
