part of 'templates_dashboard_bloc.dart';

@freezed
class TemplatesDashboardEvent with _$TemplatesDashboardEvent {
  const factory TemplatesDashboardEvent.addTemplate({
    required Template template,
  }) = _AddTemplate;
}
