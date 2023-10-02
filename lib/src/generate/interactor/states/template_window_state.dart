import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/src/generate/interactor/entities/template_window_info.dart';

part 'template_window_state.freezed.dart';

@freezed
abstract class TemplateWindowState with _$TemplateWindowState {
  factory TemplateWindowState.onlyBlackScreen() = OnlyBlackScreen;

  factory TemplateWindowState.withTemplate({
    required List<TemplateWindowInfo> windowInfo,
  }) = TemplateWindowStateWithTemplate;

  factory TemplateWindowState.withTemplateAndNewBlackScreen({
    required List<TemplateWindowInfo> windowInfo,
  }) = WithTemplateAndNewBlackScreen;
}
