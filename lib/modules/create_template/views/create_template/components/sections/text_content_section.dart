import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/fields_text_size/fields_text_size_bloc.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/widgets/text_content_section/variables_display_widget.dart';
import 'package:mustachehub/modules/create_template/views/create_template/create_template_main.dart';
import 'package:mustachehub/shared/custom_header.dart';
import 'package:url_launcher/url_launcher.dart';

class TextContentSection extends StatelessWidget {
  const TextContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeBloc = context.get<FieldsTextSizeBloc>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Column(
        children: [
          CustomHeader(
            headerTitle: 'Content String',
            subtitleWidget: const _TextContentSubtitile(),
            subtractOnPressed: () => sizeBloc.add(
              const FieldsTextSizeEvent.decreaseSizeTestString(),
            ),
            addOnPressed: () => sizeBloc.add(
              const FieldsTextSizeEvent.increaseSizeTestString(),
            ),
          ),
          const VariablesDisplayWidget(),
          const SizedBox(height: 12),
          Expanded(
            child: BlocBuilder<FieldsTextSizeBloc, FieldsTextSizeState>(
              bloc: sizeBloc,
              builder: (context, varState) {
                return TextFormField(
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
                );
              },
            ),
          ),
        ],
      ),
    );
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
