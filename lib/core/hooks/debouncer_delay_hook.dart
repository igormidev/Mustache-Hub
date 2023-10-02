import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/helpers/debouncer.dart';

Debouncer useDebouncer({final Duration? duration, final int? milliseconds}) =>
    use(_FocusNodeInitRequestingFocusHook(duration, milliseconds));

class _FocusNodeInitRequestingFocusHook extends Hook<Debouncer> {
  final Duration? duration;
  final int? milliseconds;
  const _FocusNodeInitRequestingFocusHook(this.duration, this.milliseconds);

  @override
  HookState<Debouncer, Hook<Debouncer>> createState() =>
      _FocusNodeInitRequestingFocusHookState();
}

class _FocusNodeInitRequestingFocusHookState
    extends HookState<Debouncer, _FocusNodeInitRequestingFocusHook> {
  late final Debouncer _debouncer;

  @override
  void initHook() {
    super.initHook();
    _debouncer = Debouncer(
      timerDuration: hook.duration ??
          Duration(
            milliseconds: hook.milliseconds ?? 1000,
          ),
    );
  }

  @override
  void didUpdateHook(_FocusNodeInitRequestingFocusHook oldHook) {
    // TODO: implement didUpdateHook
    super.didUpdateHook(oldHook);
  }

  @override
  Debouncer build(BuildContext context) {
    return _debouncer;
  }

  @override
  void dispose() {
    super.dispose();
    _debouncer.dispose();
  }
}
