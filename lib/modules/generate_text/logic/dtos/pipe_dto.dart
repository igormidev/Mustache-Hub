// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:mustachehub/logic/entities/pipe.dart';

sealed class PipeDTO<P extends Pipe, V> {
  abstract final P pipe;
  abstract final V? payloadValue;

  PipeDTO<P, V> copyWith({
    required V payloadValue,
  });
}

class TextPipeDto extends Equatable implements PipeDTO<TextPipe, String> {
  @override
  final TextPipe pipe;
  @override
  final String? payloadValue;

  const TextPipeDto({
    required this.pipe,
    required this.payloadValue,
  });

  @override
  List<Object> get props => [pipe, if (payloadValue != null) payloadValue!];

  @override
  TextPipeDto copyWith({
    required String? payloadValue,
  }) {
    return TextPipeDto(
      pipe: pipe,
      payloadValue: payloadValue,
    );
  }
}

class BooleanPipeDto extends Equatable implements PipeDTO<BooleanPipe, bool> {
  @override
  final BooleanPipe pipe;
  @override
  final bool payloadValue;

  const BooleanPipeDto({
    required this.pipe,
    required this.payloadValue,
  });

  @override
  BooleanPipeDto copyWith({
    required bool payloadValue,
  }) {
    return BooleanPipeDto(
      pipe: pipe,
      payloadValue: payloadValue,
    );
  }

  @override
  List<Object> get props => [pipe, payloadValue];
}
