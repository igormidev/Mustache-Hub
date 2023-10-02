import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mustachehub/core/navigation/app_module.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/firebase_options.dart';
import 'package:mustachehub/src/design_system/theme/extensions/button/large_extension.dart';
import 'package:mustachehub/src/settings/interactor/cubit/theme_cubit.dart';
import 'package:mustachehub/src/settings/interactor/state/theme_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

class NonConstant extends PathUrlStrategy {}

void main() async {
  if (kIsWeb) {
    setUrlStrategy(NonConstant());
  }
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );

  Modular.setInitialRoute('/collection');
  runApp(ModularApp(module: AppModule(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return BlocBuilder<ThemeCubit, ThemeState>(
      bloc: context.get<ThemeCubit>(),
      builder: (context, state) {
        final scheme = ColorScheme.fromSeed(
          seedColor: state.color,
          brightness: state.brightness,
        );
        return MaterialApp.router(
          title: 'Mustache hub',
          theme: ThemeData(
            colorScheme: scheme,
            inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(),
            ),
            useMaterial3: true,
            extensions: [
              LargeElevatedButtonTheme(),
            ],
            cardTheme: CardTheme(
              elevation: 0,
              margin: EdgeInsets.zero,
              color: scheme.secondaryContainer,
            ),
            chipTheme: ChipThemeData(
              elevation: 0,
              side: BorderSide.none,
              color: MaterialStateProperty.all(scheme.secondaryContainer),
            ),
            appBarTheme: AppBarTheme(
              backgroundColor: scheme.primaryContainer,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
            ),
            drawerTheme: const DrawerThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          routerConfig: Modular.routerConfig,
        );
      },
    );
  }
}
