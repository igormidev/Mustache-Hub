import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/logic/entities/template.dart';

part 'generate_text_state.dart';
part 'generate_text_event.dart';
part 'generate_text_bloc.freezed.dart';

class GenerateTextBloc extends Bloc<GenerateTextEvent, GenerateTextState> {
  GenerateTextBloc() : super(const GenerateTextState.initial()) {
    on<_SelectTemplate>(_addTemplate);
    on<_AddPayloadValue>(_addPayloadValue);
    on<_UnSelectTemplate>(_unSelectTemplate);
  }

  FutureOr<void> _addTemplate(
    _SelectTemplate event,
    Emitter<GenerateTextState> emit,
  ) {
    emit(GenerateTextState.withValues(
      template: event.template,
      payload: _getPipeInitialPayloads(
        event.template.texts,
        event.template.booleans,
        event.template.models,
      ),
    ));
  }

  FutureOr<void> _addPayloadValue(
    _AddPayloadValue event,
    Emitter<GenerateTextState> emit,
  ) {
    final dataState = state.mapOrNull(
      withValues: (value) => value,
    );

    if (dataState == null) return null;
    final newMap = {...dataState.payload};
    newMap[event.pipe.mustacheName] = event.value;

    emit(GenerateTextState.withValues(
      template: dataState.template,
      payload: newMap,
    ));
  }

  FutureOr<void> _unSelectTemplate(
    _UnSelectTemplate event,
    Emitter<GenerateTextState> emit,
  ) {
    emit(const GenerateTextState.initial());
  }

  Map<String, dynamic> _getPipeInitialPayloads(
    List<TextPipe> texts,
    List<BooleanPipe> booleans,
    List<ModelPipe> models,
  ) {
    final Map<String, dynamic> initialPayload = {};
    initialPayload.addAll(_getTextInitialPayloads(texts));
    initialPayload.addAll(_getBoolInitialPayloads(booleans));
    initialPayload.addAll(_getMapInitialPayloads(models));

    return initialPayload;
  }

  Map<String, dynamic> _getMapInitialPayloads(
    List<ModelPipe> pipes,
  ) {
    final Map<String, dynamic> payload = {};

    for (final ModelPipe modelPipe in pipes) {
      switch (modelPipe) {
        case TextPipe():
          payload.addAll(_getTextInitialPayloads(modelPipe.textPipes));
        case BooleanPipe():
          payload.addAll(_getBoolInitialPayloads(modelPipe.booleanPipes));
        case ModelPipe():
          payload.addAll(_getMapInitialPayloads(modelPipe.modelPipes));
      }
    }

    return payload;
  }

  Map<String, dynamic> _getTextInitialPayloads(
    List<TextPipe> pipes,
  ) {
    final Map<String, dynamic> payload = {};
    for (final textPipe in pipes) {
      payload.addAll({textPipe.mustacheName: null});
    }

    return payload;
  }

  Map<String, dynamic> _getBoolInitialPayloads(
    List<BooleanPipe> pipes,
  ) {
    final Map<String, dynamic> payload = {};
    for (final boolPipe in pipes) {
      payload.addAll({boolPipe.mustacheName: false});
    }

    return payload;
  }
}
