import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';

class TestHydratedBloc extends StatelessWidget {
  final GlobalKey<FormState> formKey =
      GlobalKey<FormState>(debugLabel: 'unique');
  TestHydratedBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: Text(
                'FORM 1',
                style: context.texts.headlineMedium,
              ),
            ),
            // BlocProvider(
            //   create: (context) => TestingBloc()..printName(),
            //   child: BlocBuilder<TestingBloc, TestingState>(
            //     builder: (context, state) {
            //       return Row(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Text(
            //             'lets ${state.id}',
            //             style: context.texts.headlineMedium,
            //           ),
            //           FloatingActionButton(
            //             child: const Text('test'),
            //             onPressed: () {
            //               context.read<TestingBloc>()
            //                 ..printName()
            //                 ..add(const TestingEvent.increase());
            //             },
            //           ),
            //         ],
            //       );
            //     },
            //   ),
            // ),
            // BlocProvider(
            //   create: (context) => TestingBloc()..printName(),
            //   child: BlocBuilder<TestingBloc, TestingState>(
            //     bloc: TestingBloc()..printName(),
            //     builder: (context, state) {
            //       return Row(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Text(
            //             'lets ${state.id}',
            //             style: context.texts.headlineMedium,
            //           ),
            //           FloatingActionButton(
            //             child: const Text('test'),
            //             onPressed: () {
            //               print('------');
            //               context.read<TestingBloc>()
            //                 ..printName()
            //                 ..add(const TestingEvent.increase());

            //               print('------');
            //             },
            //           ),
            //         ],
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
