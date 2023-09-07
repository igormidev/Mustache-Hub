// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TextPipeOptions extends HookWidget {
  final ValueNotifier<bool> isRequired;

  const TextPipeOptions({
    Key? key,
    required this.isRequired,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<void>(
      tooltip: 'More options',
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: ValueListenableBuilder(
              valueListenable: isRequired,
              child: const Tooltip(
                message: 'If activated this field will be required '
                    'in order to generate a text',
                child: Icon(Icons.info),
              ),
              builder: (context, value, child) {
                return SwitchListTile(
                  value: value,
                  title: const Text('Is required'),
                  secondary: child,
                  onChanged: (_) {
                    isRequired.value = !isRequired.value;
                  },
                );
              },
            ),
          ),
          // PopupMenuItem(
          //   child: HookBuilder(builder: (context) {
          //     final isSelected = useState(willManuallyTypeVariable);
          //     return CheckboxListTile(
          //       value: isSelected.value,
          //       title: const Text('Manually type id'),
          //       secondary: const Tooltip(
          //         message:
          //             'If selected it will enable an extra field where you can enter the id '
          //             'field.\nIf not selected, the default field will have the name of the '
          //             'variable in the "camelCase" format',
          //         child: Icon(Icons.info),
          //       ),
          //       onChanged: (_) {
          //         isSelected.value = !isSelected.value;
          //         Navigator.pop(context);
          //         onWillManuallyTypeVariableChanged();
          //       },
          //     );
          //   }),
          // ),
        ];
      },
    );
  }
}
