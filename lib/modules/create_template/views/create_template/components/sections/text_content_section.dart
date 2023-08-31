import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:sandbox_logger/sandbox_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustache_template/mustache_template.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/content_string/content_string_bloc.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/fields_text_size/fields_text_size_bloc.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/variables/variables_bloc.dart';
import 'package:mustachehub/modules/create_template/logic/controllers/variables_controllers.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/widgets/text_content_section/variables_display_widget.dart';
import 'package:mustachehub/modules/create_template/views/create_template/create_template_main.dart';
import 'package:mustachehub/shared/custom_header.dart';
import 'package:url_launcher/url_launcher.dart';

class TextContentSection extends HookWidget {
  const TextContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeBloc = context.get<FieldsTextSizeBloc>();
    final contentBloc = context.get<ContentStringBloc>();

    final VariablesController controller = VariablesController(
      text: contentBloc.state.currentText,
    );
    final varBloc = context.get<VariablesBloc>();
    final vars = _getExpectedVariablesFromState(varBloc.state);

    controller.updateExpectedVariables(vars);
    final tokens = contentBloc.state.mapOrNull(
      withToken: (v) => v.tokensInIt,
    );

    controller.updateTokens(tokens);
    useEffect(() {
      return () => controller.dispose();
    }, const []);

    return BlocListener<VariablesBloc, VariablesState>(
      bloc: context.get<VariablesBloc>(),
      listener: (context, state) {
        final vars = _getExpectedVariablesFromState(state);
        controller.updateExpectedVariables(vars);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            CustomHeader(
              headerTitle: 'Content String',
              subtitleWidget: const _TextContentSubtitile(),
              subtractOnPressed: () {
                controller.needsToCalculateSpan = true;
                sizeBloc.add(
                  const FieldsTextSizeEvent.decreaseSizeTestString(),
                );
              },
              addOnPressed: () {
                controller.needsToCalculateSpan = true;
                sizeBloc.add(
                  const FieldsTextSizeEvent.increaseSizeTestString(),
                );
              },
            ),
            const VariablesDisplayWidget(),
            const SizedBox(height: 12),
            Expanded(
              child: BlocBuilder<FieldsTextSizeBloc, FieldsTextSizeState>(
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
                      AddMustacheDelimmiterInputFormatter(),
                    ],
                    onChanged: (final text) {
                      final parser = Parser(text, null, '{{ }}');
                      try {
                        final tokens = parser.getTokens();
                        controller.updateTokens(tokens);
                        final event = ContentStringEvent.registerTextWithTokens(
                          newText: text,
                          tokens: tokens,
                        );
                        contentBloc.add(event);
                      } catch (_, __) {
                        controller.updateTokens(null);
                        contentBloc.add(ContentStringEvent.registerNormalText(
                          newText: text,
                        ));
                      }
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
      expectedVariables.add(pipe.name);
    }
    return expectedVariables;
  }
}

String? textWritted(
  TextEditingValue oldValue,
  TextEditingValue newValue,
) {
  return null;
}

class AddMustacheDelimmiterInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // The text the user just entered
    // logInWhite(oldValue.selection.affinity.toString());
    // logInCyan(oldValue.selection.base.affinity.toString());
    // logInGreen(oldValue.selection.extent.affinity.toString());
    logInWhite('-------------------');
    logInWhite('--------------------');
    logInWhite('---------------------');
    logInWhite('--------------------');
    logInWhite('-------------------');

    a(String text) {
      return '${text.padRight(30, ' ')} <=>          ';
    }

    () {
      final o = oldValue.selection;
      logInGreen('${a('base.affinity')}${o.base.affinity}');
      logInGreen('${a('base.offset')}${o.base.offset}');
      logInGreen('${a('baseOffset')}${o.baseOffset}');
      logInGreen('${a('extent.affinity')}${o.extent.affinity}');
      logInGreen('${a('extent.offset')}${o.extent.offset}');
      logInGreen('${a('extentOffset')}${o.extentOffset}');
      logInGreen('${a('affinity')}${o.affinity}');
      logInGreen('${a('base.affinity')}${o.base.affinity}');
      logInGreen('${a('base.offset')}${o.base.offset}');
      logInGreen('${a('start')}${o.start}');
      logInGreen('${a('end')}${o.end}');
    }();
    () {
      final o = newValue.selection;
      logInCyan('${a('base.affinity')}${o.base.affinity}');
      logInCyan('${a('base.offset')}${o.base.offset}');
      logInCyan('${a('baseOffset')}${o.baseOffset}');
      logInCyan('${a('extent.affinity')}${o.extent.affinity}');
      logInCyan('${a('extent.offset')}${o.extent.offset}');
      logInCyan('${a('extentOffset')}${o.extentOffset}');
      logInCyan('${a('affinity')}${o.affinity}');
      logInCyan('${a('base.affinity')}${o.base.affinity}');
      logInCyan('${a('base.offset')}${o.base.offset}');
      logInCyan('${a('start')}${o.start}');
      logInCyan('${a('end')}${o.end}');
    }();
    // try {
    //   logInGreen(
    //       'textInside<=>${oldValue.selection.textInside(oldValue.text)}');
    // } catch (_) {}
    // try {
    //   logInGreen('textAfter<=>${oldValue.selection.textAfter(oldValue.text)}');
    // } catch (_) {}
    // try {
    //   logInGreen(
    //       'textInside<=>${oldValue.selection.textInside(oldValue.text)}');
    // } catch (_) {}

    final amoutErased = oldValue.text.length - newValue.text.length;
    final tappedText = newValue.text.isEmpty
        ? ''
        : newValue.text[newValue.selection.start - 1];

    // final taSubindo =
    //     oldValue.selection.extent.affinity == TextAffinity.upstream;
    // logInMagenta(
    //   oldValue.text.substring(
    //     taSubindo
    //         ? oldValue.selection.baseOffset
    //         : oldValue.selection.extentOffset,
    //     taSubindo
    //         ? oldValue.selection.extentOffset
    //         : oldValue.selection.baseOffset,
    //     // oldValue.selection.extentOffset,
    //   ),
    // );
    // logInRed(newValue.selection.affinity.toString());
    // logInWhite(newValue.selection.base.affinity.toString());
    // logInWhite('$amoutErased => $tappedText');
    final didTappedDellimiter =
        tappedText == '{' && (amoutErased == -1 || amoutErased == 0);
    final newText = newValue.text
        .replaceRange(newValue.selection.start, newValue.selection.end, '{}}');

    if (didTappedDellimiter) {
      return newValue.copyWith(
        text: newText,
        selection: TextSelection.collapsed(
          offset: newValue.selection.start + 1,
        ),
      );
    }
    return newValue;

    // final endsWithDelimmiter = newValue.text.endsWith('{');
    logInMagenta('${newValue.composing.start}');
    logInMagenta('${newValue.composing.end}');
    logInWhite('${newValue.selection.start}');
    logInWhite('${newValue.selection.end}');
    if (didTappedDellimiter) {
      return newValue.copyWith(
        text: '${newValue.text}{}}',
        selection: TextSelection.collapsed(
          offset: newValue.selection.start + 1,
        ),
      );
    } else {
      return newValue;
    }
    logInGreen('-------');
    print(oldValue.text);
    log('---');
    print(newValue.text);
  }
}

class _TextContentSubtitile extends StatelessWidget {
  const _TextContentSubtitile();

  @override
  Widget build(BuildContext context) {
    final style = context.texts.bodyMedium;

    return RichText(
      text: TextSpan(
        style: style,
        children: [
          const TextSpan(
            text: 'Type below the text in ',
          ),
          TextSpan(
            text: 'mustache 5 format',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl(
                  Uri.parse('https://mustache.github.io/mustache.5.html'),
                );
              },
            style: style?.copyWith(
              decoration: TextDecoration.underline,
              color: context.scheme.primary,
            ),
          ),
          const TextSpan(
            text: ' which will be used to generate the text with the use'
                'of the variables that the user will fill. When typing '
                'this text you can use the previously created variables.',
          ),
        ],
      ),
    );
  }
}

class ReordebleTextFields extends HookWidget with ValidatorsMixins {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ReordebleTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    final fields = useState(<TextEditingController>[]);

    return Form(
      key: _formKey,
      child: ReorderableList(
        onReorder: (oldIndex, newIndex) {
          // print('old $oldIndex || new $newIndex');
          // final newFields = [...fields.value];
          // final item = fields.value[oldIndex];

          // final oldItem = fields.value[oldIndex];
          // final newItem = fields.value[newIndex];
          // newFields.removeAt(oldIndex);
          // newFields.insert(newIndex, item);
          // fields.value = newFields;
        },
        onReorderEnd: (index) {},
        itemCount: fields.value.length + 1,
        itemBuilder: (context, index) {
          if (fields.value.length == index) {
            return AddNewButton(
              key: UniqueKey(),
              onTap: () {
                if (_formKey.currentState?.validate() == true) {
                  fields.value = [...fields.value, TextEditingController()];
                }
              },
              text: 'Add new field',
            );
          }

          return Padding(
            key: UniqueKey(),
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: TextFormField(
              validator: (val) => isNotEmpty(
                val,
                'Need to write something to continue',
              ),
              controller: fields.value[index],
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: context.scheme.onPrimary,
                suffixIcon: IconButton(
                  onPressed: () {
                    final newList = [...fields.value];
                    newList[index].dispose();
                    newList.removeAt(index);
                    fields.value = newList;
                  },
                  icon: const Icon(Icons.delete),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
