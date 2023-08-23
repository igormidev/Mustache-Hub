part of 'dashboard_page_bloc.dart';

@freezed
class DashboardPageState with _$DashboardPageState {
  const factory DashboardPageState.withPage({
    required int pageIndex,
  }) = _WithPage;
}
