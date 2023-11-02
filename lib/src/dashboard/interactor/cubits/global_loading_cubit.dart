import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';

class GlobalLoadingCubit extends Cubit<bool> {
  GlobalLoadingCubit() : super(false);

  void setGlobalLoadingToTrue() {
    emit(true);
  }

  void setGlobalLoadingToFalse() {
    emit(false);
  }
}

extension GlobalLoadingCubitExtension on BuildContext {
  void setGlobalLoadingToTrue() =>
      get<GlobalLoadingCubit>().setGlobalLoadingToTrue();
  void setGlobalLoadingToFalse() =>
      get<GlobalLoadingCubit>().setGlobalLoadingToFalse();
  bool get isGlobalLoadingActivated => get<GlobalLoadingCubit>().state;
  bool get isGlobalLoadingDisabled => get<GlobalLoadingCubit>().state;
}

// final ValueNotifier<bool> isGlobalLoading = ValueNotifier<bool>(false);
// bool get isGlobalLoadingActivated => isGlobalLoading.value;
// bool get isGlobalLoadingDisabled => isGlobalLoading.value;
// void setGlobalLoadingToTrue() {
//   isGlobalLoading.value = true;
// }

// void setGlobalLoadingToFalse() {
//   isGlobalLoading.value = false;
// }
