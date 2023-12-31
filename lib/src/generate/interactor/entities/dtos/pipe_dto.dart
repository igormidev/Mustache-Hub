import 'package:equatable/equatable.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

part 'pipe_dtos_impl/text_pipe_dto.dart';
part 'pipe_dtos_impl/boolean_pipe_dto.dart';

sealed class PipeDTO<P extends Pipe, V> extends Equatable {
  abstract final P pipe;
  abstract final V? payloadValue;

  PipeDTO<P, V> copyWith({
    required V payloadValue,
  });
}
