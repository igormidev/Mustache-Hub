import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/core/mixins/default_id_caster.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/variables/variables_bloc.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/sections/base_variable_creator_card.dart';

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

class PipeFormfield extends StatelessWidget
    with ValidatorsMixins, DefaultIdCaster {
  final TextEditingController nameEC;
  final TextEditingController descriptionEC;
  final void Function() onDelete;
  final void Function() onSave;
  final List<Widget> children;
  final GlobalKey<FormState> formKey;
  final Widget? optionWidget;
  final Pipe pipe;

  PipeFormfield({
    super.key,
    required this.nameEC,
    required this.descriptionEC,
    required this.onDelete,
    required this.onSave,
    required this.formKey,
    required this.pipe,
    this.optionWidget,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    final variablesBloc = context.get<VariablesBloc>();

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
          validator: (val) => combineValidators([
            () => isNotEmpty(val),
            () {
              final value = tryValidCast(val);
              if (value == null) {
                return 'Not valid name.';
              }

              return null;
            },
            () {
              if (val == null) return 'Invalid text';

              if (_containsValuesAlready(variablesBloc.state, val, pipe)) {
                return 'Already exists a variable with this name';
              }

              return null;
            },
          ]),
          maxLength: 30,
        ),
        ...children,
        const SizedBox(height: 8),
        Row(
          children: [
            if (optionWidget != null) optionWidget!,
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

  bool _containsValuesAlready(
    VariablesState state,
    String value,
    Pipe refPipe,
  ) {
    for (final pipe in <Pipe>[
      ...state.textPipes,
      ...state.booleanPipes,
      ...state.modelPipes,
    ]) {
      final isDiferentPipe = refPipe.id != pipe.id;
      if (pipe.name == value && isDiferentPipe) return true;

      if (pipe is ModelPipe) {
        final didNameExist = _doesNameExist(<Pipe>[
          ...pipe.textPipes,
          ...pipe.booleanPipes,
          ...pipe.modelPipes,
        ], value, refPipe);
        if (didNameExist == true) return true;
      }
    }
    return false;
  }

  bool _doesNameExist(
    List<Pipe> pipes,
    String value,
    Pipe refPipe,
  ) {
    for (final pipe in pipes) {
      final isDiferentPipe = refPipe.id != pipe.id;
      if (pipe.name == value && isDiferentPipe) return true;

      if (pipe is ModelPipe) {
        final didNameExist = _doesNameExist(<Pipe>[
          ...pipe.textPipes,
          ...pipe.booleanPipes,
          ...pipe.modelPipes,
        ], value, refPipe);

        final isDiferentPipe = refPipe.id != pipe.id;
        if (didNameExist == true && isDiferentPipe) return true;
      }
    }

    return false;
  }
}
