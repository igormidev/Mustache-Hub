import 'package:flutter/material.dart';
import 'package:mustachehub/logic/blocs/user/user_bloc.dart';

class OpacityWidget extends StatelessWidget {
  final UserState state;
  final Widget child;
  const OpacityWidget({super.key, required this.state, required this.child});

  @override
  Widget build(BuildContext context) {
    final isLoading = state.isLoading;

    return Opacity(
      opacity: isLoading ? 0.4 : 1,
      child: IgnorePointer(
        ignoring: isLoading,
        child: child,
      ),
    );
  }
}
