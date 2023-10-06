// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mustache_template/mustache_template.dart';

import 'package:mustachehub/core/helpers/debouncer.dart';
import 'package:mustachehub/src/create/interactor/entities/token_identifier.dart';
import 'package:mustachehub/src/create/interactor/text_editing_controller/variables_info_highlight_text_editing_controller.dart';

class AutoCompleteWrapper extends StatefulWidget {
  final VariablesController controller;
  final Widget child;
  const AutoCompleteWrapper({
    Key? key,
    required this.controller,
    required this.child,
  }) : super(key: key);

  @override
  State<AutoCompleteWrapper> createState() => _AutoCompleteWrapperState();
}

class _AutoCompleteWrapperState extends State<AutoCompleteWrapper> {
  final deboucer = Debouncer(timerDuration: 200.ms);
  @override
  void initState() {
    final controller = widget.controller;
    final List<TokenIdentifier> allIdentifiers = [];
    final List<TokenIdentifier> currentOptions = [];

    controller.addListener(() {
      deboucer.resetDebounce(() {
        final parser = Parser(controller.text, null, '{{ }}');
        final tokens = parser.getTokens();
        final cursorIndex = controller.value.selection.base;

        final List<Token> antes = [];

        final List<String> helpTexts = [];

        for (final Token token in tokens) {
          if (_isIdentifierToken(token)) {}
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  bool _isIdentifierToken(Token token) {
    return token.type == TokenType.openDelimiter ||
        token.type == TokenType.closeDelimiter ||
        token.type == TokenType.identifier ||
        token.type == TokenType.sigil;
  }
}
