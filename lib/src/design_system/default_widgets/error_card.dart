import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';

class ErrorCard<B extends StateStreamable<S>, S> extends StatelessWidget {
  const ErrorCard({
    super.key,
    required this.isErrorState,
  });

  final (String? title, String? message)? Function(S s) isErrorState;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      bloc: context.get<B>(),
      builder: (context, state) {
        final error = isErrorState(state);
        if (error == null) return const SizedBox(height: 70);

        return Tooltip(
          message: error.$2 ?? 'Something went wrong',
          child: Card(
            color: context.scheme.errorContainer,
            child: SizedBox(
              height: 70,
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  Icon(
                    Icons.error,
                    size: 30,
                    color: context.scheme.onErrorContainer,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            error.$1 ?? 'Error!',
                            style: context.texts.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: context.scheme.onErrorContainer,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  const SizedBox(width: 34),
                ],
              ),
            ),
          ).animate().fadeIn(delay: 400.ms).shakeX(),
        );
      },
    );
  }
}
