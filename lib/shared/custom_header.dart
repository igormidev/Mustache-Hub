import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String headerTitle;
  final Color? color;
  final String? headerSubtitle;
  final Widget? subtitleWidget;
  final void Function()? subtractOnPressed;
  final void Function()? addOnPressed;
  final void Function()? deleteOnPressed;
  final void Function()? clearOnPressed;
  final List<CustomActionHeader>? actions;

  const CustomHeader({
    super.key,
    required this.headerTitle,
    this.color,
    this.headerSubtitle,
    this.subtitleWidget,
    this.subtractOnPressed,
    this.addOnPressed,
    this.deleteOnPressed,
    this.clearOnPressed,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  headerTitle,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: color,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            if (actions != null) ...actions!.map((e) => e).toList(),
            if (subtractOnPressed != null)
              IconButton(
                onPressed: subtractOnPressed,
                icon: const Icon(Icons.remove),
              ),
            if (addOnPressed != null)
              IconButton(
                onPressed: addOnPressed,
                icon: const Icon(Icons.add),
              ),
            if (deleteOnPressed != null)
              IconButton(
                onPressed: deleteOnPressed,
                icon: const Icon(Icons.delete),
              ),
            if (clearOnPressed != null)
              IconButton(
                onPressed: clearOnPressed,
                icon: const Icon(Icons.clear),
              ),
          ],
        ),
        if (subtitleWidget != null) subtitleWidget!,
        if (headerSubtitle != null)
          Text(
            headerSubtitle ?? '',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
      ],
    );
  }
}

class CustomActionHeader extends StatelessWidget {
  final IconData iconData;
  final void Function() onPressed;

  const CustomActionHeader({
    required this.iconData,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(iconData),
    );
  }
}
