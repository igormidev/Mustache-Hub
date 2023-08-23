import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/hooks/debouncer_delay_hook.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';

class PipeFormfield<B extends StateStreamable<S>, S, T extends Pipe>
    extends HookWidget with ValidatorsMixins {
  final _formKey = GlobalKey<FormState>();
  final T pipe;
  final T? Function(S state) pipeSelector;
  final void Function(String name) onNameChanged;
  final void Function(String description) onDescriptionChanged;
  final void Function() onDelete;
  final void Function(String name, String description) onSave;
  final List<Widget> children;

  PipeFormfield({
    super.key,
    required this.pipe,
    required this.pipeSelector,
    required this.onNameChanged,
    required this.onDescriptionChanged,
    required this.onDelete,
    required this.onSave,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    final descriptionDebounce = useDebouncer(milliseconds: 700);
    final nameDebounce = useDebouncer(milliseconds: 700);
    final nameEC = useTextEditingController(text: pipe.name);
    final descriptionEC = useTextEditingController(text: pipe.description);

    return BlocSelector<B, S, T?>(
      bloc: context.get<B>(),
      selector: pipeSelector,
      builder: (context, pipe) {
        if (pipe == null) return SizedBox.fromSize();

        return Card(
          color: context.scheme.primaryContainer,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
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
                    onChanged: (description) {
                      descriptionDebounce.resetDebounce(() {
                        onDescriptionChanged(description);
                      });
                    },
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
                    onChanged: (name) {
                      nameDebounce.resetDebounce(() {
                        onNameChanged(name);
                      });
                    },
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
                          if (_formKey.currentState?.validate() == true) {
                            onSave(nameEC.text, descriptionEC.text);
                          }
                        },
                        icon: const Icon(Icons.save),
                        label: const Text('Save'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
