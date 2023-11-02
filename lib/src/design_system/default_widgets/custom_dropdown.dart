import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';

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
