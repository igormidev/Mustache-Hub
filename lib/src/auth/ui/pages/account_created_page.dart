import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:mustachehub/core/constants/lotties.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/modules_navigation_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/src/user/interactor/cubits/user_cubit.dart';
import 'package:mustachehub/src/user/interactor/states/user_model_state.dart';

class AccountCreatedPage extends HookWidget {
  const AccountCreatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userCubit = context.get<UserCubit>();
    final userName = userCubit.state.user?.name;
    final canStartAnimating = useState(false);
    useEffect(() {
      Future.delayed(400.ms, () => canStartAnimating.value = true);
      return null;
    }, const []);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (canStartAnimating.value)
                FittedBox(
                  child: SizedBox(
                    height: 250,
                    width: 250,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        HookBuilder(builder: (context) {
                          final willShowBackground = useState(false);
                          useEffect(() {
                            Future.delayed(const Duration(seconds: 7), () {
                              willShowBackground.value = true;
                            });
                            return null;
                          }, const []);

                          return Visibility(
                            visible: willShowBackground.value,
                            child: Lottie.asset(
                              Lotties.congratulations,
                            ),
                          );
                        }),
                        FittedBox(
                          child: SizedBox(
                            height: 200,
                            width: 200,
                            child: Lottie.asset(
                              Lotties.success,
                              repeat: false,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Lottie.asset(
                            Lotties.congratulations,
                            repeat: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Text(
                userName != null ? 'Wellcome, $userName' : 'Welcome',
                style: context.texts.titleLarge?.copyWith(
                  color: context.scheme.primary,
                ),
              ).animate(delay: 1000.ms).fadeIn(delay: 1500.milliseconds).moveY(
                    begin: -70,
                    end: -20,
                    duration: 800.ms,
                  ),
              Text(
                'Account created successfully',
                textAlign: TextAlign.center,
                style: context.texts.bodyMedium?.copyWith(
                  color: context.scheme.secondary,
                ),
              ).animate(delay: 1000.ms).fadeIn(delay: 2300.milliseconds),
              const SizedBox(height: 16),
              TextButton.icon(
                icon: const Icon(Icons.home_rounded),
                label: const Text('Continue'),
                onPressed: () {
                  context
                      .get<ModulesNavigationCubit>()
                      .selectNavigation(ENavigationPossibilities.account);
                },
              ).animate(delay: 2000.ms).fadeIn(delay: 3000.milliseconds),
            ],
          ),
        ),
      ),
    );
  }
}
