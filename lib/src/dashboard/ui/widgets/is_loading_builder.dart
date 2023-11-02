import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/global_loading_cubit.dart';

class IsLoadingBuilder extends StatelessWidget {
  final Widget loadingWidget;
  final Widget child;
  const IsLoadingBuilder(
      {super.key, required this.loadingWidget, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalLoadingCubit, bool>(
      bloc: context.get(),
      builder: (context, state) {
        return state ? loadingWidget : child;
      },
    );
  }
}
