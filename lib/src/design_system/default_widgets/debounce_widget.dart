import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/helpers/debouncer.dart';

class DebounceWidget extends HookWidget {
  final Debouncer debouncer;
  final Widget? child;
  const DebounceWidget(
    this.debouncer, {
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final isDebouncing = useState(false);
    useEffect(() {
      debouncer.addOnInitFunction(() {
        isDebouncing.value = true;
      });
      debouncer.addOnEndFunction(() {
        isDebouncing.value = false;
      });
      return null;
    }, const []);

    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: ValueListenableBuilder(
        valueListenable: isDebouncing,
        child: const SizedBox(
          height: 30,
          width: 30,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: AspectRatio(
                aspectRatio: 1,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                ),
              ),
            ),
          ),
        ),
        builder: (context, value, child) {
          if (value == true) return child!;

          return this.child ?? SizedBox.fromSize();
        },
      ),
    );
  }
}
