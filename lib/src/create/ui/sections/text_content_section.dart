import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/hooks/debouncer_delay_hook.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/create/interactor/cubit/content_string_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/fields_text_size_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/sugestion_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/variables_cubit.dart';
import 'package:mustachehub/src/create/interactor/input_formaters/add_mustache_delimmiter_input_formater.dart';
import 'package:mustachehub/src/create/interactor/state/fields_text_size_state.dart';
import 'package:mustachehub/src/create/interactor/state/variables_state.dart';
import 'package:mustachehub/src/create/interactor/text_editing_controller/variables_info_highlight_text_editing_controller.dart';
import 'package:mustachehub/src/create/ui/headers/text_content_header.dart';
import 'package:mustachehub/src/create/ui/widgets/variables_display_widget.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';
import 'package:mustache_template/mustache_template.dart';

class TextContentSection extends HookWidget {
  const TextContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeBloc = context.get<FieldsTextSizeCubit>();
    final contentCubit = context.get<ContentStringCubit>();
    final decouncer = useDebouncer(milliseconds: 1000);
    final sugestionCubit = context.get<SugestionCubit>();

    final VariablesController controller = VariablesController(
      text: contentCubit.state.currentText,
    );
    final varCubit = context.get<VariablesCubit>();
    final vars = _getExpectedVariablesFromState(varCubit.state);

    controller.updateExpectedVariables(vars);
    final tokens = contentCubit.state.mapOrNull(
      withToken: (v) => v.tokensInIt,
    );

    controller.updateTokens(tokens);
    useEffect(() {
      return () => controller.dispose();
    }, const []);

    return BlocListener<VariablesCubit, VariablesState>(
      bloc: varCubit,
      listener: (context, state) {
        final vars = _getExpectedVariablesFromState(state);
        controller.updateExpectedVariables(vars);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            TextContentHeader(
              controller: controller,
              debouncer: decouncer,
            ),
            const SizedBox(height: 8),
            const VariablesDisplayWidget(),
            const SizedBox(height: 8),
            Expanded(
              child: BlocBuilder<FieldsTextSizeCubit, FieldsTextSizeState>(
                bloc: sizeBloc,
                builder: (context, varState) {
                  return TextFormField(
                    controller: controller,
                    expands: true,
                    maxLines: null,
                    style: context.texts.bodyLarge?.copyWith(
                      fontSize: varState.testStringTextSize,
                    ),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      fillColor: context.scheme.onInverseSurface,
                      filled: true,
                    ),
                    textAlignVertical: TextAlignVertical.top,
                    inputFormatters: [
                      AddMustacheDelimmiterInputFormatter(
                        sugestionCubit: sugestionCubit,
                        varCubit: varCubit,
                      ),
                    ],
                    onChanged: (final text) {
                      decouncer.resetDebounce(() {
                        try {
                          final parser = Parser(text, null, '{{ }}');
                          final tokens = parser.getTokens();
                          controller.updateTokens(tokens);
                          contentCubit.registerTextWithTokens(
                            newText: text,
                            tokens: tokens,
                          );
                        } catch (_, __) {
                          controller.updateTokens(null);
                          contentCubit.registerNormalText(
                            newText: text,
                          );
                        }
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> _getExpectedVariablesFromState(VariablesState state) {
    final List<String> expectedVariables = [];
    for (final pipe in <Pipe>[
      ...state.textPipes,
      ...state.booleanPipes,
      ...state.modelPipes,
    ]) {
      expectedVariables.add(pipe.mustacheName);
    }
    return expectedVariables;
  }
}
