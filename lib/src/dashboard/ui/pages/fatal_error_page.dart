import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:mustachehub/core/constants/lotties.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/initial_binding_cubit.dart';
import 'package:mustachehub/src/user/interactor/cubits/user_cubit.dart';

class FatalErrorPage extends StatelessWidget {
  final Object error;
  const FatalErrorPage({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            FittedBox(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Lottie.asset(
                  Lotties.error,
                  repeat: false,
                ),
              ),
            ),
            const SizedBox(),
            Text(
              'Fatal error',
              style: context.texts.titleLarge?.copyWith(
                color: context.scheme.error,
              ),
            ).animate().fadeIn(delay: 1500.milliseconds).moveY(
                  begin: -70,
                  end: 0,
                  duration: 800.ms,
                ),
            const SizedBox(height: 16),
            Text(
              'Advanced details:\n$error',
              textAlign: TextAlign.center,
              style: context.texts.bodyMedium?.copyWith(
                color: context.scheme.onErrorContainer,
              ),
            ).animate().fadeIn(delay: 2300.milliseconds),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                context.get<InitialBindingCubit>().startSeachingUserModel();
                await FirebaseAuth.instance.signOut();
                if (context.mounted) context.get<UserCubit>().getUser();
              },
              child: const Text('Try again'),
            ).animate().fadeIn(delay: 3000.milliseconds),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
