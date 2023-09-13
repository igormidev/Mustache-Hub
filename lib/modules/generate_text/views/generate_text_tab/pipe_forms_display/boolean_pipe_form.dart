import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/modules/generate_text/logic/blocs/generate_text/generate_text_bloc.dart';
import 'package:mustachehub/modules/generate_text/logic/dtos/pipe_dto.dart';
import 'package:mustachehub/shared/custom_header.dart';

class BooleanPipeForm extends StatelessWidget {
  final List<BooleanPipeDto> pipes;
  const BooleanPipeForm({
    super.key,
    required this.pipes,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.get<GenerateTextBloc>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHeader(headerTitle: 'Boolean variables'),
        Wrap(
          children: pipes.map((pipe) {
            return BoleanSwitch(pipeDto: pipe, bloc: bloc);
          }).toList(),
        ),
      ],
    );
  }
}

class BoleanSwitch extends HookWidget {
  final BooleanPipeDto pipeDto;
  final GenerateTextBloc bloc;
  const BoleanSwitch({
    required this.pipeDto,
    super.key,
    required this.bloc,
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
            bloc.add(GenerateTextEvent.addBooleanPayloadValue(
              pipe: pipeDto.pipe,
              value: choosedValue,
            ));
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
