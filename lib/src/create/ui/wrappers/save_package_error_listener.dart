import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/create/interactor/cubit/package_form_cubit.dart';
import 'package:mustachehub/src/create/interactor/state/package_form_state.dart';
import 'package:mustachehub/src/design_system/dialogs_api/implementations/show_error_dialog.dart';

class SavePackageErrorListener extends StatelessWidget {
  final Widget child;
  const SavePackageErrorListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final packageCubit = context.get<PackageFormCubit>();
    return BlocListener<PackageFormCubit, PackageFormState>(
      bloc: packageCubit,
      listener: (context, state) {
        state.mapOrNull(
          failure: (value) {
            showErrorDialog(
              context,
              'Upload error',
              'A error has ocourred while sending the package info to server',
            );
            packageCubit.setStateToNormal();
          },
        );
      },
      child: child,
    );
  }
}
