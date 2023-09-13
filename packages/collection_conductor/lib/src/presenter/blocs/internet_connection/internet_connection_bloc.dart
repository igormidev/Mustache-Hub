import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection_conductor/src/presenter/services/internet_connection_service/internet_connection_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_connection_state.dart';
part 'internet_connection_event.dart';
part 'internet_connection_bloc.freezed.dart';

class InternetConnectionBloc
    extends Bloc<InternetConnectionEvent, InternetConnectionState>
    implements Disposable {
  final IInternetConnectionService _internetConnectionService;
  StreamSubscription<InternetConnectionStatus>? _internetConnectionStream;

  InternetConnectionBloc({
    required IInternetConnectionService internetConnectionService,
  })  : _internetConnectionService = internetConnectionService,
        super(const InternetConnectionState.withoutConnectin()) {
    on<_InitInternetMonitoring>(_initInternetMonitoring);
  }

  FutureOr<void> _initInternetMonitoring(
    _InitInternetMonitoring event,
    Emitter<InternetConnectionState> emit,
  ) {
    if (_internetConnectionStream != null) return null;

    _internetConnectionStream =
        _internetConnectionService.internetStatus.listen(
      (InternetConnectionStatus state) {
        switch (state) {
          case InternetConnectionStatus.withInternet:
            emit(const InternetConnectionState.withConnection());
          case InternetConnectionStatus.withoutInternet:
            emit(const InternetConnectionState.withoutConnectin());
        }
      },
    );
  }

  @override
  void dispose() {
    _internetConnectionStream?.cancel();
    _internetConnectionService.dispose();
  }
}
