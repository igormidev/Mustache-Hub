import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';

class TestHydratedBloc extends StatelessWidget {
  final GlobalKey<FormState> formKey =
      GlobalKey<FormState>(debugLabel: 'unique');
  TestHydratedBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FirstTest(),
    );
  }
}

class FirstTest extends StatelessWidget {
  const FirstTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
