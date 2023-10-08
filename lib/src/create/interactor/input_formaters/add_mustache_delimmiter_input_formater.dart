import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mustache_template/mustache_template.dart';
import 'package:mustachehub/src/create/interactor/cubit/sugestion_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/variables_cubit.dart';

class AddMustacheDelimmiterInputFormatter extends TextInputFormatter {
  final SugestionCubit sugestionCubit;
  final VariablesCubit varCubit;
  AddMustacheDelimmiterInputFormatter({
    required this.sugestionCubit,
    required this.varCubit,
  });

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
      try {
        setSuggestionFromCurrentCursor(newText, newValue.selection.start + 1);
      } catch (_) {}

      return newValue.copyWith(
        text: newText,
        selection: TextSelection.collapsed(
          offset: newValue.selection.start + 1,
        ),
      );
    }
    return newValue;
  }

  @visibleForTesting
  void setSuggestionFromCurrentCursor(String newText, int cursorIndex) {
    final parser = Parser(newText, null, '{{ }}');
    final tokens = parser.getTokens();

    final varState = varCubit.state;

    if (varState.textPipes.isEmpty &&
        varState.booleanPipes.isEmpty &&
        varState.modelPipes.isEmpty) {
      return;
    }

    sugestionCubit.setSuggestionsFromCurrentCursorIndex(
      cursorIndex: cursorIndex,
      tokens: tokens,
      textPipes: varState.textPipes,
      booleanPipes: varState.booleanPipes,
      modelPipes: varState.modelPipes,
    );
  }
}
