import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/extensions/pipe_extension.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/modules/generate_text/core/mixins/get_info_from_template.dart';
import 'package:mustachehub/modules/generate_text/core/mixins/mustache_text_mixin.dart';
import 'package:mustachehub/modules/generate_text/logic/blocs/generate_text/generate_text_bloc.dart';

class TextDisplaySection extends HookWidget
    with MustacheTextMixin, GetInfoFromTemplate {
  final GlobalKey<FormState> formKey;
  const TextDisplaySection({
    super.key,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    final mustacheText = useState<String?>(null);

    return BlocConsumer<GenerateTextBloc, GenerateTextState>(
      listener: (context, state) {
        final textState = state.mapOrNull(withData: (value) => value)?.pipes;
        if (textState == null) {
          if (mustacheText.value != null) mustacheText.value = null;
          return;
        }

        if (formKey.currentState?.validate() == true) {
          final payload = getPayloadFromDtos(
            texts: textState.template.texts,
            booleans: textState.template.booleans,
            models: textState.template.models,
            textDtos: textState.textDtos,
            booleanDtos: textState.booleanDtos,
          );

          final generatedText = getMustacheText(
            textState.template.content,
            payload,
          );

          if (generatedText != null) {
            mustacheText.value = generatedText;
          } else {
            mustacheText.value = '';
          }
        } else {
          if (mustacheText.value != null) mustacheText.value = null;
        }
      },
      bloc: context.get<GenerateTextBloc>(),
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: context.scheme.surfaceVariant,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: context.scheme.onInverseSurface,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ValueListenableBuilder(
              valueListenable: mustacheText,
              builder: (context, value, child) {
                if (value == null) {
                  return Center(
                    child: Text(
                      'Need to type all\nrequired fields!',
                      style: context.texts.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  );
                }

                if (value.isEmpty) {
                  return Center(
                    child: Text(
                      'Error generating text!\nCheck if content text are valid.',
                      style: context.texts.titleMedium?.copyWith(
                        color: context.scheme.error,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                }

                return Align(
                  alignment: Alignment.topLeft,
                  child: SingleChildScrollView(
                    child: Text(
                      value,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
