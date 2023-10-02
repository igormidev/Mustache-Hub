import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/design_system/default_widgets/custom_header.dart';
import 'package:mustachehub/src/generate/interactor/cubits/payload_cubit.dart';
import 'package:mustachehub/src/generate/interactor/entities/dtos/pipe_dto.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/expected_payload.dart';
import 'package:mustachehub/src/generate/interactor/states/payload_state.dart';

class BooleanPipeForm extends StatelessWidget {
  final String content;
  final ExpectedPayload expectedPayload;
  const BooleanPipeForm({
    super.key,
    required this.content,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.get<PayloadCubit>();

    return BlocBuilder<PayloadCubit, PayloadState>(
        bloc: context.get<PayloadCubit>(),
        buildWhen: (prev, curr) {
          final prevDtos = prev.expectedPayloadDto?.booleanDtos;
          final currDtos = curr.expectedPayloadDto?.booleanDtos;
          if (prevDtos == null || currDtos == null) return true;
          return listEquals(prevDtos, currDtos) == false;
        },
        builder: (context, state) {
          final pipes =
              state.expectedPayloadDto?.booleanDtos ?? <BooleanPipeDto>[];

          if (pipes.isEmpty) return SizedBox.fromSize();

          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomHeader(headerTitle: 'Boolean variables'),
              Wrap(
                children: pipes.map((pipe) {
                  return BoleanSwitch(
                    pipeDto: pipe,
                    onChangedCallback: (value) async {
                      return await bloc.addBooleanPayloadValue(
                        content: content,
                        expectedPayload: expectedPayload,
                        pipe: pipe.pipe,
                        value: value,
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          );
        });
  }
}

class BoleanSwitch extends HookWidget {
  final BooleanPipeDto pipeDto;

  final Future<void> Function(bool value) onChangedCallback;
  const BoleanSwitch({
    super.key,
    required this.pipeDto,
    required this.onChangedCallback,
  });

  @override
  Widget build(BuildContext context) {
    final state = useState(pipeDto.payloadValue);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(
          message: pipeDto.pipe.description,
          child: Icon(
            Icons.info,
            color: context.scheme.secondary,
          ),
        ),
        const SizedBox(width: 4),
        InkWell(
          onTap: () {
            final choosedValue = !state.value;
            state.value = choosedValue;
            onChangedCallback(choosedValue);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(pipeDto.pipe.name),
              const SizedBox(width: 4),
              IgnorePointer(
                child: Checkbox(
                  activeColor: context.scheme.primary,
                  value: state.value,
                  onChanged: (_) {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
