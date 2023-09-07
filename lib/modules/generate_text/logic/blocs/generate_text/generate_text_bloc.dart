import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/logic/entities/template.dart';
import 'package:mustachehub/modules/generate_text/logic/dtos/generate_text_state.dart';

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
    final data = _getPipeInitialPayloads(
      event.template.texts,
      event.template.booleans,
      event.template.models,
    );
    emit(GenerateTextState.withData(
      pipes: GenerateTextStateModel(
        template: event.template,
        payload: data.$1,
        requiredPipes: data.$2,
      ),
    ));
  }

  FutureOr<void> _addPayloadValue(
    _AddPayloadValue event,
    Emitter<GenerateTextState> emit,
  ) {
    final dataState = state
        .mapOrNull(
          withData: (value) => value,
        )
        ?.pipes;

    if (dataState == null) return null;
    final newMap = {...dataState.payload};
    newMap[event.pipe.mustacheName] = event.value;

    emit(GenerateTextState.withData(
      pipes: GenerateTextStateModel(
        template: dataState.template,
        payload: newMap,
        requiredPipes: dataState.requiredPipes,
      ),
    ));
  }

  FutureOr<void> _unSelectTemplate(
    _UnSelectTemplate event,
    Emitter<GenerateTextState> emit,
  ) {
    emit(const GenerateTextState.initial());
  }

  (Map<String, dynamic> payload, List<String> requiredPipesIds)
      _getPipeInitialPayloads(
    List<TextPipe> texts,
    List<BooleanPipe> booleans,
    List<ModelPipe> models,
  ) {
    final Map<String, dynamic> initialPayload = {};
    final List<String> requiredPipesIds = [];

    final data = _getTextInitialPayloads(texts);
    initialPayload.addAll(data.$1);
    requiredPipesIds.addAll(data.$2);
    initialPayload.addAll(_getBoolInitialPayloads(booleans));
    initialPayload.addAll(_getMapInitialPayloads(models));

    return (initialPayload, requiredPipesIds);
  }

  Map<String, dynamic> _getMapInitialPayloads(
    List<ModelPipe> pipes,
  ) {
    final Map<String, dynamic> payload = {};
    final List<String> requiredPipesIds = [];

    for (final ModelPipe modelPipe in pipes) {
      switch (modelPipe) {
        case TextPipe():
          final data = _getTextInitialPayloads(modelPipe.textPipes);
          payload.addAll(data.$1);
          requiredPipesIds.addAll(data.$2);
        case BooleanPipe():
          payload.addAll(_getBoolInitialPayloads(modelPipe.booleanPipes));
        case ModelPipe():
          payload.addAll(_getMapInitialPayloads(modelPipe.modelPipes));
      }
    }

    return payload;
  }

  (Map<String, dynamic> payload, List<String> requiredPipesIds)
      _getTextInitialPayloads(
    List<TextPipe> pipes,
  ) {
    final Map<String, dynamic> payload = {};
    final List<String> requiredPipesIds = [];
    for (final textPipe in pipes) {
      payload.addAll({textPipe.mustacheName: null});
      if (textPipe.isRequired) {
        requiredPipesIds.add(textPipe.mustacheName);
      }
    }

    return (payload, requiredPipesIds);
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
