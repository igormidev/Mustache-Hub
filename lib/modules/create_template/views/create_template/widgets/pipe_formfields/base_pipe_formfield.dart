import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/sections/base_variable_creator_card.dart';

class PipeFormFieldCardWrapper extends StatelessWidget {
  final Widget child;
  final ListType type;
  const PipeFormFieldCardWrapper({
    super.key,
    required this.child,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      ListType.listviewBuilder => child,
      ListType.sliverBuildDelegate => Card(
          color: context.scheme.primaryContainer,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: child,
          ),
        ),
    };
  }
}

class PipeFormfield extends StatelessWidget with ValidatorsMixins {
  final TextEditingController nameEC;
  final TextEditingController descriptionEC;
  final void Function() onDelete;
  final void Function() onSave;
  final List<Widget> children;
  final GlobalKey<FormState> formKey;

  PipeFormfield({
    super.key,
    required this.nameEC,
    required this.descriptionEC,
    required this.onDelete,
    required this.onSave,
    required this.formKey,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        TextFormField(
          controller: descriptionEC,
          decoration: InputDecoration(
            label: const Text('Description'),
            isDense: true,
            filled: true,
            fillColor: context.scheme.onPrimary,
          ),
          minLines: 1,
          maxLines: 3,
          validator: isNotEmpty,
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: nameEC,
          decoration: InputDecoration(
            label: const Text('Name'),
            isDense: true,
            filled: true,
            fillColor: context.scheme.onPrimary,
          ),
          validator: isNotEmpty,
          maxLength: 30,
        ),
        ...children,
        const SizedBox(height: 8),
        Row(
          children: [
            const Spacer(),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: context.scheme.errorContainer,
                foregroundColor: context.scheme.onErrorContainer,
              ),
              onPressed: onDelete,
              icon: const Icon(Icons.delete),
              label: const Text('Delete'),
            ),
            const SizedBox(width: 8),
            ElevatedButton.icon(
              onPressed: () {
                if (formKey.currentState?.validate() == true) {
                  onSave();
                }
              },
              icon: const Icon(Icons.save),
              label: const Text('Save'),
            ),
          ],
        ),
      ],
    );
  }
}
