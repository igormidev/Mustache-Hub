import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/shared/custom_header.dart';

class TemplateSaveFormBottomSheet extends StatelessWidget
    with ValidatorsMixins {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TemplateSaveFormBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save template'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              final isValid = _formKey.currentState?.validate() == true;
            },
            tooltip: 'Confirm form and save template',
            icon: const Icon(Icons.save_rounded),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 16),
            const CustomHeader(
              headerTitle: 'Template info',
              headerSubtitle: 'A template needs to have some info to be '
                  'publicated. Such as a name and a description.',
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Template name',
              ),
              validator: isNotEmpty,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Template description',
              ),
              textAlignVertical: TextAlignVertical.top,
              textAlign: TextAlign.start,
              minLines: 3,
              maxLines: 10,
              validator: isNotEmpty,
            ),
            const SizedBox(height: 16),
            // const Divider(height: 16),
            ListTileDropdown<PublishType>(
              items: PublishType.values,
              initialValue: PublishType.public,
              onChanged: (_) {},
              title: 'Publish/Visibility type:',
              tooltip:
                  'In both case, the template will be uploaded to the mustache\n'
                  'hub. But if it is private, only you will be able to find, see and use it.\n'
                  'If it is public, anyone can find you template by searching for it or for your profile.',
              itemBuilder: (item) {
                return Text(item.name);
              },
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

enum PublishType {
  private,
  public;
}

class ListTileDropdown<T> extends StatelessWidget {
  final Widget Function(T item) itemBuilder;
  final void Function(T?)? onChanged;
  final List<T> items;
  final Widget? hint;
  final T? initialValue;
  final String title;
  final String? tooltip;
  const ListTileDropdown({
    super.key,
    required this.title,
    required this.items,
    required this.itemBuilder,
    this.tooltip,
    this.hint,
    this.initialValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.scheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          if (tooltip != null && (tooltip?.isNotEmpty ?? false)) ...{
            Tooltip(
              message: tooltip,
              child: const Icon(Icons.help),
            ),
            const SizedBox(width: 8),
          },
          Text(
            title,
            style: context.texts.labelLarge,
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: context.scheme.inversePrimary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: HookBuilder(builder: (context) {
              final selectedValue = useState<T?>(initialValue);
              return DropdownButton<T?>(
                hint: hint,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.zero,
                isDense: true,
                borderRadius: BorderRadius.circular(20),
                // isExpanded: false,
                underline: SizedBox.fromSize(),
                items: items.map((item) {
                  return DropdownMenuItem<T>(
                    value: item,
                    alignment: Alignment.center,
                    child: itemBuilder(item),
                  );
                }).toList(),
                value: selectedValue.value,
                onChanged: (value) {
                  selectedValue.value = value;
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
