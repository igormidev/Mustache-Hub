import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/src/dashboard/interactor/entities/e_navigation_possibilities.dart';

part 'modules_navigation_state.freezed.dart';

@freezed
abstract class ModulesNavigationState with _$ModulesNavigationState {
  factory ModulesNavigationState({
    required ENavigationPossibilities selectedPossibility,
  }) = Default;
}
