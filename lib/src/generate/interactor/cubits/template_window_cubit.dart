import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/generate/interactor/entities/template_window_info.dart';
import 'package:mustachehub/src/generate/interactor/states/template_window_state.dart';

class TemplateWindowCubit extends Cubit<TemplateWindowState> {
  TemplateWindowCubit() : super(TemplateWindowState.onlyBlackScreen());

  void addNewTab({
    required String templateId,
    required String templateVersionName,
  }) {
    final List<TemplateWindowInfo>? windowInfos = state.mapOrNull(
      withTemplate: (v) => v.windowInfo,
      withTemplateAndNewBlackScreen: (v) => v.windowInfo,
    );

    emit(TemplateWindowState.withTemplate(
      windowInfo: [
        ...?windowInfos,
        TemplateWindowInfo(
          templateId: templateId,
          templateVersionName: templateVersionName,
        ),
      ],
    ));
  }

  void removeTabWithId(String windowId) {
    final List<TemplateWindowInfo>? windowInfos = state.mapOrNull(
      withTemplate: (v) => v.windowInfo,
      withTemplateAndNewBlackScreen: (v) => v.windowInfo,
    );

    final newListWindows = [...?windowInfos];

    newListWindows.removeWhere((element) => element.windowId == windowId);

    emit(TemplateWindowState.withTemplate(
      windowInfo: newListWindows,
    ));
  }
}
