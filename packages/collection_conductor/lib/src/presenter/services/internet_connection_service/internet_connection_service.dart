import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class IInternetConnectionService {
  abstract final Stream<InternetConnectionStatus> internetStatus;

  void init();
  void dispose();
}

class InternetConnectionServiceImpl implements IInternetConnectionService {
  late final StreamSubscription<ConnectivityResult> _connectivityResult;
  StreamSubscription<InternetStatus>? _internetStatus;

  final StreamController<InternetConnectionStatus> _internetController;

  @override
  late final Stream<InternetConnectionStatus> internetStatus;

  InternetConnectionServiceImpl()
      : _internetController = StreamController<InternetConnectionStatus>();

  @override
  void init() {
    _connectivityResult = Connectivity().onConnectivityChanged.listen(
          _onConnectionChanged,
        );

    internetStatus = _internetController.stream;
  }

  void _onConnectionChanged(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      _internetStatus?.cancel();
      _internetStatus = null;
      _internetController.add(InternetConnectionStatus.withoutInternet);
    } else {
      _internetStatus =
          InternetConnection().onStatusChange.listen(_onInternetStatusChanged);
    }
  }

  void _onInternetStatusChanged(InternetStatus status) {
    switch (status) {
      case InternetStatus.connected:
        _internetController.add(InternetConnectionStatus.withInternet);
      case InternetStatus.disconnected:
        _internetController.add(InternetConnectionStatus.withoutInternet);
    }
  }

  @override
  void dispose() {
    _internetController.close();
    _connectivityResult.cancel();
    _internetStatus?.cancel();
    _internetStatus?.cancel();
    _internetStatus = null;
  }
}

enum InternetConnectionStatus {
  withInternet,
  withoutInternet;
}
