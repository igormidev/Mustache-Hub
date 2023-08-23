part of 'dashboard_page_bloc.dart';

@freezed
class DashboardPageEvent with _$DashboardPageEvent {
  const factory DashboardPageEvent.setPage({
    required int pageIndex,
  }) = _SetPage;
}
