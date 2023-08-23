import 'dart:async';

class Debouncer {
  Timer? _timer;
  final Duration timerDuration;

  Debouncer({
    this.timerDuration = const Duration(seconds: 1),
  });

  void resetDebounce(void Function() execute) {
    _timer?.cancel();
    _timer = Timer(timerDuration, execute);
  }

  void dispose() {
    _timer?.cancel();
  }
}
