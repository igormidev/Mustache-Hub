import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/logic/entities/template.dart';

part 'templates_dashboard_state.dart';
part 'templates_dashboard_event.dart';
part 'templates_dashboard_bloc.freezed.dart';

class TemplatesDashboardBloc
    extends Bloc<TemplatesDashboardEvent, TemplatesDashboardState> {
  TemplatesDashboardBloc()
      : super(const TemplatesDashboardState.noTemplatesSelected());
}
