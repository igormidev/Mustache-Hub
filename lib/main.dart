import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/firebase_options.dart';
import 'package:mustachehub/logic/blocs/theme/theme_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'core/navigation/app_module.dart';
import 'modules/auth/views/wrappers/auth_wrapper.dart';
import 'theme/extensions/button/large_extension.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  // await HydratedBloc.storage.clear();

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

    Modular.setInitialRoute('/home');

    return Builder(builder: (context) {
      return BlocBuilder<ThemeBloc, ThemeState>(
        bloc: context.get<ThemeBloc>(),
        builder: (context, state) {
          final scheme = ColorScheme.fromSeed(
            seedColor: state.color.color,
            brightness: state.brightness,
          );

          return MaterialApp.router(
            title: 'Mustache Hub',
            routerConfig: Modular.routerConfig,
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
                )),
            builder: (context, child) {
              return AuthWrapper(child: child!);
            },
          );
        },
      );
    });
  }
}
