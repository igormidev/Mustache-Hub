import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/helpers/debouncer.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/core/navigation/navigation_service.dart';
import 'package:mustachehub/src/create/interactor/cubit/content_string_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/fields_text_size_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/sugestion_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/variables_cubit.dart';
import 'package:mustachehub/src/create/interactor/entities/token_identifier.dart';
import 'package:mustachehub/src/create/interactor/input_formaters/add_mustache_delimmiter_input_formater.dart';
import 'package:mustachehub/src/create/interactor/state/fields_text_size_state.dart';
import 'package:mustachehub/src/create/interactor/state/sugestion_state.dart';
import 'package:mustachehub/src/create/interactor/state/variables_state.dart';
import 'package:mustachehub/src/create/interactor/text_editing_controller/variables_info_highlight_text_editing_controller.dart';
import 'package:mustachehub/src/create/ui/headers/text_content_header.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';
import 'package:mustachex/mustachex.dart';

class TextContentSection extends StatefulWidget {
  const TextContentSection({super.key});

  @override
  State<TextContentSection> createState() => _TextContentSectionState();
}

class _TextContentSectionState extends State<TextContentSection> {
  final FocusNode textfieldFocusNode = FocusNode();
  late final VariablesController controller;
  final TextEditingController textEditingController = TextEditingController();
  late final OptionsController<TokenIdentifier> optionsController;
  final Debouncer decouncer = Debouncer(timerDuration: 800.ms);

  @override
  void initState() {
    super.initState();

    final contentCubit = context.get<ContentStringCubit>();
    controller = VariablesController(
      text: contentCubit.state.currentText,
    );

    final varCubit = context.get<VariablesCubit>();
    final vars = _getExpectedVariablesFromState(varCubit.state);
    controller.updateExpectedVariables(vars);

    final tokens = contentCubit.state.mapOrNull(
      withToken: (v) => v.tokensInIt,
    );

    controller.updateTokens(tokens);

    optionsController = OptionsController<TokenIdentifier>(
      textfieldFocusNode: textfieldFocusNode,
      textEditingController: textEditingController,
      context: context,
      optionAsString: (option) => option.name,
      overlay: Overlay.of(NavigatorService.deshboardContext),
      onSelectInsertInCursor: (option) {
        return InsertInCursorPayload(
          cursorIndexChangeQuantity: option.map(
            text: (value) => 2,
            boolean: (value) => -3 - value.name.length,
            model: (value) => -3 - value.name.length,
          ),
          text: option.map(
            text: (value) {
              Future.delayed(const Duration(milliseconds: 800), () {
                _notifyContentCubit(contentCubit, textEditingController.text);
              });
              return value.name;
            },
            boolean: (value) {
              Future.delayed(const Duration(milliseconds: 800), () {
                _notifyContentCubit(contentCubit, textEditingController.text);
              });
              return '#${value.name}}}{{/${value.name}';
            },
            model: (value) {
              Future.delayed(const Duration(milliseconds: 800), () {
                _notifyContentCubit(contentCubit, textEditingController.text);
              });
              return '#${value.name}}}{{/${value.name}';
            },
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    optionsController.dispose();
    decouncer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sizeBloc = context.get<FieldsTextSizeCubit>();
    final contentCubit = context.get<ContentStringCubit>();
    final varCubit = context.get<VariablesCubit>();
    final sugestionCubit = context.get<SugestionCubit>();

    return MultiBlocListener(
      listeners: [
        BlocListener<VariablesCubit, VariablesState>(
          bloc: context.get<VariablesCubit>(),
          listener: (context, state) {
            final vars = _getExpectedVariablesFromState(state);
            controller.updateExpectedVariables(vars);
          },
        ),
        BlocListener<SugestionCubit, SugestionState>(
          bloc: sugestionCubit,
          listener: (context, state) {
            // optionsController.updateOptions(options);
          },
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            TextContentHeader(
              controller: controller,
              debouncer: decouncer,
            ),
            const SizedBox(height: 8),
            Expanded(
              child: BlocBuilder<FieldsTextSizeCubit, FieldsTextSizeState>(
                bloc: sizeBloc,
                builder: (context, varState) {
                  optionsController.updateContext(context);
                  return TextFormField(
                    focusNode: textfieldFocusNode,
                    controller: textEditingController,
                    // expands: true,
                    // scrollController: ,
                    maxLines: 10,
                    style: context.texts.bodyLarge?.copyWith(
                      height: 1,
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
                        optionsController: optionsController,
                      ),
                    ],
                    onChanged: (final String text) {
                      decouncer.resetDebounce(() {
                        _notifyContentCubit(contentCubit, text);
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

  void _notifyContentCubit(ContentStringCubit contentCubit, String text) {
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
