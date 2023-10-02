import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/constants/lotties.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/design_system/default_widgets/custom_header.dart';
import 'package:mustachehub/src/generate/interactor/cubits/content_cubit.dart';
import 'package:mustachehub/src/generate/interactor/cubits/payload_cubit.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/expected_payload.dart';
import 'package:mustachehub/src/generate/interactor/states/content_state.dart';
import 'package:mustachehub/src/generate/interactor/states/payload_state.dart';
import 'package:mustachehub/src/generate/ui/sections/empty_template_input_section.dart';

class TextOutputPage extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String content;
  final ExpectedPayload expectedPayload;

  const TextOutputPage({
    super.key,
    required this.content,
    required this.expectedPayload,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    final payloadCubit = context.get<PayloadCubit>();
    final contentBloc = context.get<ContentCubit>();
    return BlocListener<PayloadCubit, PayloadState>(
      bloc: payloadCubit,
      listener: (context, state) {
        // final formState = formKey.currentState;
        // final isFormValid = formState?.validate();
        // if (isFormValid == false) {
        //   return payloadCubit.setStateToPendingRequiredFields();
        // } else {
        //   contentBloc.updateContent(
        //     content: content,
        //     expectedPayload: expectedPayload,
        //     expectedPayloadDTO: state.expectedPayloadDto,
        //   );
        // }
      },
      child: BlocBuilder<ContentCubit, ContentState>(
        bloc: contentBloc,
        builder: (
          context,
          state,
        ) {
          return state.map(
            withContentPendency: (value) {
              return const EmptyIndicatorSection(
                text: 'No content text made',
                assetName: 'assets/lottie/empty.json',
                willHaveCircleAvatarInDarkMode: true,
              );
            },
            failureGeneratingText: (value) {
              return const EmptyIndicatorSection(
                text:
                    'Error generating text!\nCheck if content text are valid.',
                assetName: Lotties.error,
                willHaveCircleAvatarInDarkMode: false,
                sholdRepeat: false,
              );
            },
            withContentText: (v) => _FinalWidget(
              content: v.content,
            ),
            withGeneratedText: (v) => _FinalWidget(
              content: v.content,
            ),
          );
        },
      ),
    );
  }
}

class _FinalWidget extends StatelessWidget {
  final String content;
  const _FinalWidget({
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayloadCubit, PayloadState>(
      bloc: context.get<PayloadCubit>(),
      buildWhen: (previous, current) {
        return previous.runtimeType != current.runtimeType;
      },
      builder: (context, state) {
        if (state is WithRequiredFieldsPendency) {
          return const EmptyIndicatorSection(
            text: 'Need to type all\nrequired fields!',
            assetName: Lotties.warning,
            willHaveCircleAvatarInDarkMode: false,
            sholdRepeat: false,
            margin: 32,
          );
        }

        return Padding(
          padding: const EdgeInsets.only(
            right: 20,
            bottom: 20,
          ),
          child: Column(
            children: [
              CustomHeader(
                headerTitle: 'Output text',
                actions: [
                  CustomActionHeader(
                    tooltip: 'Copy all output to clipboard',
                    iconData: Icons.copy,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  color: context.scheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: context.scheme.onInverseSurface,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SingleChildScrollView(
                      child: Text(content),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
