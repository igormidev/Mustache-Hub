import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/list_extensions.dart';
import 'package:mustachehub/core/hooks/debouncer_delay_hook.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/design_system/default_widgets/custom_header.dart';
import 'package:mustachehub/src/design_system/default_widgets/debounce_widget.dart';
import 'package:mustachehub/src/generate/interactor/cubits/form_stats_cubit.dart';
import 'package:mustachehub/src/generate/interactor/cubits/payload_cubit.dart';
import 'package:mustachehub/src/generate/interactor/entities/dtos/pipe_dto.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/expected_payload.dart';
import 'package:mustachehub/src/generate/interactor/states/form_stats_state.dart';
import 'package:mustachehub/src/generate/interactor/states/payload_state.dart';

class TextPipeForm extends StatelessWidget {
  final String content;
  final ExpectedPayload expectedPayload;
  const TextPipeForm({
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
        final prevDtos = prev.expectedPayloadDto?.textDtos;
        final currDtos = curr.expectedPayloadDto?.textDtos;
        if (prevDtos == null || currDtos == null) return true;
        return listEquals(prevDtos, currDtos) == false;
      },
      builder: (context, state) {
        final pipes = state.expectedPayloadDto?.textDtos ?? <TextPipeDto>[];

        if (pipes.isEmpty) return SizedBox.fromSize();

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeader(
              headerTitle: 'Text variables payload',
              moreOptions: [
                PopupMenuItem(
                  enabled: false,
                  child: DropdownMenu<int?>(
                    width: 200,
                    leadingIcon: const Tooltip(
                      message: 'Select how much textfields will be show in '
                          'one the row.\nIf set to auto, will pick '
                          'automatically the best size depending on how '
                          'much space you have in screen.',
                      child: Icon(Icons.help),
                    ),
                    label: const Text('Variables per row'),
                    onSelected: (value) {
                      context.get<FormStatsCubit>().changeGridSize(value);
                    },
                    dropdownMenuEntries: const [
                      DropdownMenuEntry(
                        value: null,
                        label: 'Auto',
                      ),
                      DropdownMenuEntry(
                        value: 1,
                        label: 'One',
                      ),
                      DropdownMenuEntry(
                        value: 2,
                        label: 'Two',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            BlocBuilder<FormStatsCubit, FormStatsState>(
              bloc: context.get<FormStatsCubit>(),
              builder: (context, state) {
                return LayoutBuilder(
                  builder: (context, constraints) {
                    int groupSplit;
                    if (state.textGridSize != null) {
                      groupSplit = state.textGridSize!;
                    } else {
                      if (constraints.maxWidth <= 600) {
                        groupSplit = 1;
                      } else {
                        groupSplit = 2;
                      }
                    }

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ...pipes
                            .splitIntoGroups(groupSplit)
                            .map((List<TextPipeDto> pipesCluster) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              children: pipesCluster.map((pipe) {
                                return Expanded(
                                  child: TextPipeTextfield(
                                    pipeDto: pipe,
                                    onChangedCallback: (text) async {
                                      return await bloc.addTextPayloadValue(
                                        content: content,
                                        generatorData: expectedPayload,
                                        pipe: pipe.pipe,
                                        value: text,
                                      );
                                    },
                                  ),
                                );
                              }).toList(),
                            ),
                          );
                        }),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class TextPipeTextfield extends HookWidget with ValidatorsMixins {
  final TextPipeDto pipeDto;
  final Future<void> Function(String? text) onChangedCallback;
  const TextPipeTextfield({
    super.key,
    required this.pipeDto,
    required this.onChangedCallback,
  });

  @override
  Widget build(BuildContext context) {
    final debouncer = useDebouncer(milliseconds: 1200);

    return TextFormField(
      initialValue: pipeDto.payloadValue,
      decoration: InputDecoration(
        labelText: pipeDto.pipe.name,
        hintText: pipeDto.pipe.description,
        suffixIcon: DebounceWidget(
          debouncer,
          child: Tooltip(
            message: pipeDto.pipe.description,
            child: const Icon(Icons.info),
          ),
        ),
      ),
      autovalidateMode: AutovalidateMode.always,
      validator: (String? value) {
        if (pipeDto.pipe.isRequired) return isNotEmpty(value);

        return null;
      },
      onChanged: (value) {
        debouncer.resetDebounce(() async {
          final text = value.isEmpty == true ? null : value;
          onChangedCallback(text);
        });
      },
    );
  }
}
