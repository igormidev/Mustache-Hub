import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_page_state.dart';
part 'dashboard_page_event.dart';
part 'dashboard_page_bloc.freezed.dart';

class DashboardPageBloc extends Bloc<DashboardPageEvent, DashboardPageState> {
  DashboardPageBloc() : super(const DashboardPageState.withPage(pageIndex: 0)) {
    on<_SetPage>(_setPage);
  }

  FutureOr<void> _setPage(
    _SetPage event,
    Emitter<DashboardPageState> emit,
  ) {
    emit(DashboardPageState.withPage(pageIndex: event.pageIndex));
  }
}
