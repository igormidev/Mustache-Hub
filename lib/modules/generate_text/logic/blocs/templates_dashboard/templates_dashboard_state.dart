part of 'templates_dashboard_bloc.dart';

@freezed
class TemplatesDashboardState with _$TemplatesDashboardState {
  const factory TemplatesDashboardState.noTemplatesSelected() =
      NoTemplatesSelected;

  const factory TemplatesDashboardState.withTemplates({
    required List<Template> templates,
    required String selectedTemplateId,
  }) = _WithTemplates;
}
