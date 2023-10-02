import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void useDidUpdateWidget(void Function() execute) =>
    use(_DidUpdateWidgetHook(execute));

class _DidUpdateWidgetHook extends Hook<void> {
  final void Function() execute;
  const _DidUpdateWidgetHook(this.execute);

  @override
  HookState<void, Hook<void>> createState() =>
      _DidUpdateWidgetInitRequestingFocusHookState();
}

class _DidUpdateWidgetInitRequestingFocusHookState
    extends HookState<void, _DidUpdateWidgetHook> {
  @override
  void didUpdateHook(_DidUpdateWidgetHook oldHook) {
    super.didUpdateHook(oldHook);
    hook.execute();
  }

  @override
  void build(BuildContext context) => {};
}
