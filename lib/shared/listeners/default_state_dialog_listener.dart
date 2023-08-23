import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/exceptions/custom_exception.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/shared/dialogs_api/implementations/hide_dialog.dart';
import 'package:mustachehub/shared/dialogs_api/implementations/loading_dialog.dart';
import 'package:mustachehub/shared/dialogs_api/implementations/show_error_dialog.dart';
import 'package:mustachehub/shared/dialogs_api/implementations/show_success_dialog.dart';

class DefaultStateDialogListener<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  const DefaultStateDialogListener({
    required this.loadingState,
    required this.child,
    this.errorState,
    this.listener,
    super.key,
    this.successState,
  });

  final Widget child;
  final CustomException? Function(S s)? errorState;
  final S? Function(S s) loadingState;
  final S? Function(S s)? successState;
  final void Function(BuildContext context, S state)? listener;

  @override
  Widget build(BuildContext context) {
    final bloc = context.get<B>();
    return BlocListener<B, S>(
      bloc: bloc,
      listenWhen: (previous, current) {
        if (previous == current) return false;

        final currIsLoading = loadingState(current) != null;
        if (currIsLoading) {
          log('${B.runtimeType} Putting loading');
          showLoadingDialog(context);
          return true;
        }

        final error = errorState?.call(current);
        final currIsError = error != null;
        final currIsSuccess = successState?.call(current) != null;

        if (currIsError) {
          log('${B.runtimeType} Putting error dialog');
          showErrorDialog(context, error);
          return true;
        }

        final prevIsError = errorState?.call(previous) != null;
        final prevIsLoading = loadingState(previous) != null;

        if (prevIsError || prevIsLoading) {
          log('${B.runtimeType} Removing dialog');
          hideCurrentDialog();
        }

        if (successState != null && (prevIsLoading && currIsSuccess)) {
          log('${B.runtimeType} Putting success dialog');
          showSuccessDialog(context);
          return true;
        }

        return true;
      },
      listener: listener ?? (context, state) {},
      child: child,
    );
  }
}
