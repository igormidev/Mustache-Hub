import 'package:flutter/services.dart';

class AddMustacheDelimmiterInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final isControlZ = oldValue.selection.start == oldValue.selection.end;
    // If needed to get the removed area, uncomment this.
    // final selectedAreaRemovedText = isControlZ
    //     ? null
    //     : oldValue.text
    //         .substring(oldValue.selection.start, oldValue.selection.end);

    final addedTextToSelectedArea = isControlZ
        ? null
        : newValue.text
            .substring(oldValue.selection.start, newValue.selection.end);

    final amoutErased = oldValue.text.length - newValue.text.length;
    final didAddedValidTextToSelectedArea = addedTextToSelectedArea == '{';
    final tappedText = newValue.text.isEmpty
        ? ''
        : didAddedValidTextToSelectedArea
            ? addedTextToSelectedArea
            : newValue.text[newValue.selection.start - 1];

    final didTappedDellimiter = tappedText == '{' &&
        ((amoutErased == -1 || amoutErased == 0) ||
            didAddedValidTextToSelectedArea);
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
  }
}
