import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/logic/entities/template.dart';
import 'package:mustachehub/modules/generate_text/core/mixins/get_info_from_template.dart';
import 'package:mustachehub/modules/generate_text/logic/dtos/generate_text_state.dart';
import 'package:mustachehub/modules/generate_text/logic/dtos/pipe_dto.dart';

part 'generate_text_state.dart';
part 'generate_text_event.dart';
part 'generate_text_bloc.freezed.dart';

class GenerateTextBloc extends Bloc<GenerateTextEvent, GenerateTextState>
    with GetInfoFromTemplate {
  GenerateTextBloc() : super(const GenerateTextState.initial()) {
    on<_SelectTemplate>(_addTemplate);
    on<_UnSelectTemplate>(_unSelectTemplate);
    on<_AddTextPayloadValue>(_addTextPayloadValue);
    on<_AddBooleanPayloadValue>(_addBooleanPayloadValue);
  }

  FutureOr<void> _addTemplate(
    _SelectTemplate event,
    Emitter<GenerateTextState> emit,
  ) {
    final prevPipe = state.mapOrNull(withData: (value) => value)?.pipes;

    final pipeDtos = dtosFromTemplate(
      event.template,
      prevPipe?.textDtos,
      prevPipe?.booleanDtos,
    );

    emit(GenerateTextState.withData(
      pipes: GenerateTextStateModel(
        template: event.template,
        textDtos: pipeDtos.$1,
        booleanDtos: pipeDtos.$2,
      ),
    ));
  }

  FutureOr<void> _addTextPayloadValue(
    _AddTextPayloadValue event,
    Emitter<GenerateTextState> emit,
  ) {
    final dataState = state.mapOrNull(withData: (value) => value)?.pipes;
    if (dataState == null) return null;
    final newDtos = [...dataState.textDtos];
    final index = newDtos.indexWhere((dto) => dto.pipe.id == event.pipe.id);
    newDtos[index] = newDtos[index].copyWith(payloadValue: event.value);

    emit(GenerateTextState.withData(
      pipes: GenerateTextStateModel(
        template: dataState.template,
        booleanDtos: dataState.booleanDtos,
        textDtos: newDtos,
      ),
    ));
  }

  FutureOr<void> _addBooleanPayloadValue(
    _AddBooleanPayloadValue event,
    Emitter<GenerateTextState> emit,
  ) {
    final dataState = state.mapOrNull(withData: (value) => value)?.pipes;
    if (dataState == null) return null;
    final newDtos = [...dataState.booleanDtos];
    final index = newDtos.indexWhere((dto) => dto.pipe.id == event.pipe.id);
    newDtos[index] = newDtos[index].copyWith(payloadValue: event.value);

    emit(GenerateTextState.withData(
      pipes: GenerateTextStateModel(
        template: dataState.template,
        booleanDtos: newDtos,
        textDtos: dataState.textDtos,
      ),
    ));
  }

  FutureOr<void> _unSelectTemplate(
    _UnSelectTemplate event,
    Emitter<GenerateTextState> emit,
  ) {
    emit(const GenerateTextState.initial());
  }

  // @override
  // GenerateTextState? fromJson(Map<String, dynamic> json) {
  //   return GenerateTextState.fromJson(json);
  // }

  // @override
  // Map<String, dynamic>? toJson(GenerateTextState state) {
  //   return state.toJson();
  // }
}
