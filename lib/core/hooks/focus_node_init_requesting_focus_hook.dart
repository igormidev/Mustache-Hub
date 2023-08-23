import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// Will instanciate the focus node and request focus
FocusNode useInitialRequestFocusNode() =>
    use(const _FocusNodeInitRequestingFocusHook());

class _FocusNodeInitRequestingFocusHook extends Hook<FocusNode> {
  const _FocusNodeInitRequestingFocusHook();

  @override
  HookState<FocusNode, Hook<FocusNode>> createState() =>
      _FocusNodeInitRequestingFocusHookState();
}

class _FocusNodeInitRequestingFocusHookState
    extends HookState<FocusNode, _FocusNodeInitRequestingFocusHook> {
  late final FocusNode _focusNode;

  @override
  void initHook() {
    super.initHook();
    _focusNode = FocusNode();
    _focusNode.requestFocus();
  }

  @override
  FocusNode build(BuildContext context) {
    return _focusNode;
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }
}
