import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/modules/find/testing/testing_bloc.dart';

class TestHydratedBloc extends StatelessWidget {
  const TestHydratedBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocProvider(
              create: (context) => TestingBloc()..printName(),
              child: BlocBuilder<TestingBloc, TestingState>(
                builder: (context, state) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'lets ${state.id}',
                        style: context.texts.headlineMedium,
                      ),
                      FloatingActionButton(
                        child: const Text('test'),
                        onPressed: () {
                          print('------');
                          context.read<TestingBloc>()
                            ..printName()
                            ..add(const TestingEvent.increase());
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
            BlocProvider(
              create: (context) => TestingBloc()..printName(),
              child: BlocBuilder<TestingBloc, TestingState>(
                bloc: TestingBloc()..printName(),
                builder: (context, state) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'lets ${state.id}',
                        style: context.texts.headlineMedium,
                      ),
                      FloatingActionButton(
                        child: const Text('test'),
                        onPressed: () {
                          print('------');
                          context.read<TestingBloc>()
                            ..printName()
                            ..add(const TestingEvent.increase());

                          print('------');
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
