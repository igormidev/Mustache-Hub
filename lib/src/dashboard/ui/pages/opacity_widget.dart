import 'package:flutter/material.dart';
import 'package:mustachehub/src/dashboard/interactor/states/initial_binding_state.dart';

class OpacityWidget extends StatelessWidget {
  final InitialBindingState state;
  final Widget child;
  const OpacityWidget({super.key, required this.state, required this.child});

  @override
  Widget build(BuildContext context) {
    final isLoading = state is! InitialBindingComplete;

    return Opacity(
      opacity: isLoading ? 0.4 : 1,
      child: IgnorePointer(
        ignoring: isLoading,
        child: Builder(
          builder: (context) {
            if (isLoading) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  child,
                  const CircularProgressIndicator.adaptive(),
                ],
              );
            }
            return child;
          },
        ),
      ),
    );
  }
}
