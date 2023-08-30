import 'package:flutter/material.dart';
import 'package:mustache_template/mustache_template.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/logic/entities/pipe.dart';

class VariablesController extends TextEditingController {
  VariablesController({super.text});

  void updateExpectedVariables(
    List<String>? expectedVariables,
  ) {
    expectedVariables?.isEmpty == true
        ? _catalogedVariables = null
        : _catalogedVariables = expectedVariables;

    _cacheSpan.clear();
    notifyListeners();
  }

  void updateTokens(List<Token>? tokens) {
    tokens?.isEmpty == true ? _tokens = null : _tokens = tokens;
    _cacheSpan.clear();
    needsToCalculateSpan = true;
    notifyListeners();
  }

  /// The tokens of a mustache template that will be used to
  /// create the a visual destinction beetween mustache
  /// elements and normal text elements.
  List<Token>? _tokens;

  /// The name of the variables that the user created.
  /// Here all all the pipe identifiers [Pipe.name].
  List<String>? _catalogedVariables;

  /// Created to not need to compute every time the span
  /// if the [text] dosen't change
  List<InlineSpan> _cacheSpan = [];

  bool needsToCalculateSpan = false;

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    if (_isCacheStillValid() && needsToCalculateSpan == false) {
      return TextSpan(
        style: style,
        children: _cacheSpan,
      );
    }

    if (needsToCalculateSpan) {
      needsToCalculateSpan = false;
      final spans = getSpans(style, context);
      _cacheSpan = spans;
      return TextSpan(
        style: style,
        children: spans,
      );
    }

    return super.buildTextSpan(
      context: context,
      withComposing: withComposing,
      style: style,
    );
  }

  @visibleForTesting
  List<InlineSpan> getSpans(
    TextStyle? style,
    BuildContext? context,
  ) {
    final List<InlineSpan> spans = []; // Will be returned in the end

    final primaryColor = context?.scheme.primary;
    // final background = context?.scheme.primaryContainer;
    final error = context?.scheme.error;
    final errorBackground = context?.scheme.errorContainer;

    final List<String> cluster = [];
    bool isLastDelimitter = false;

    /// If the identifier is not cataloged we will show
    /// a indicator that variable has not been created yet.
    bool isCurrentIdenfitierIsCataloged = true;
    void updateCurrIdentifierState(final Token t) {
      final isIdentifier = t.type == TokenType.identifier;
      if (isIdentifier == false) return;
      final isCataloged = _catalogedVariables?.any((c) => c == t.value);
      if (isCataloged == true) {
        isCurrentIdenfitierIsCataloged = true;
      } else {
        isCurrentIdenfitierIsCataloged = false;
      }
    }

    TextStyle? getIdentifierStyle() {
      return style?.copyWith(
        color: isCurrentIdenfitierIsCataloged ? primaryColor : error,
        backgroundColor:
            isCurrentIdenfitierIsCataloged ? null : errorBackground,
      );
    }

    _tokens?.forEach((final Token token) {
      if (_isIdentifierToken(token)) {
        isLastDelimitter = token.type == TokenType.closeDelimiter;
        updateCurrIdentifierState(token);
        cluster.add(token.value);
      } else {
        if (cluster.isNotEmpty) {
          if (cluster.length <= 2) {
            final cText = cluster.join();
            spans.add(TextSpan(text: cText, style: style));
            cluster.clear();
          } else {
            final cText = cluster.join();
            spans.add(TextSpan(text: cText, style: getIdentifierStyle()));
            cluster.clear();
          }
        }
        spans.add(TextSpan(text: token.value, style: style));
      }
    });

    // Add the last values if needed (Not added in the above forEach)
    final cText = cluster.join();
    if (cluster.isNotEmpty && isLastDelimitter) {
      if (cluster.length <= 2) {
        spans.add(TextSpan(text: cText, style: style));
        cluster.clear();
      } else {
        spans.add(TextSpan(text: cText, style: getIdentifierStyle()));
      }
    } else if (cluster.isNotEmpty) {
      spans.add(TextSpan(text: cText, style: style));
    }

    return spans;
  }

  bool _isIdentifierToken(Token token) {
    return token.type == TokenType.openDelimiter ||
        token.type == TokenType.closeDelimiter ||
        token.type == TokenType.identifier ||
        token.type == TokenType.sigil;
  }

  bool _isCacheStillValid() {
    return _cacheSpan.isNotEmpty;
  }
}