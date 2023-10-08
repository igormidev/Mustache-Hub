import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mustachehub/core/extensions/extensions_screen_breakpoint.dart';
import 'package:mustachehub/core/helpers/local_source.dart';
import 'package:mustachehub/core/navigation/navigator.dart';
import 'package:mustachehub/src/account/data/repositories/image_repository_impl.dart';
import 'package:mustachehub/src/account/interactor/cubit/image_selector_cubit.dart';
import 'package:mustachehub/src/account/interactor/repositories/i_image_repository.dart';
import 'package:mustachehub/src/account/ui/pages/account_image_select.dart';
import 'package:mustachehub/src/account/ui/pages/account_main.dart';
import 'package:mustachehub/src/auth/data/repositories/log_in_repository_impl.dart';
import 'package:mustachehub/src/auth/data/repositories/sign_in_repository_impl.dart';
import 'package:mustachehub/src/auth/interactor/cubit/login_form_cubit.dart';
import 'package:mustachehub/src/auth/interactor/cubit/sign_up_form_cubit.dart';
import 'package:mustachehub/src/auth/interactor/repositories/i_log_in_repository.dart';
import 'package:mustachehub/src/auth/interactor/repositories/i_sign_in_repository.dart';
import 'package:mustachehub/src/auth/ui/pages/account_created_page.dart';
import 'package:mustachehub/src/auth/ui/pages/login_page.dart';
import 'package:mustachehub/src/auth/ui/pages/signin_page.dart';
import 'package:mustachehub/src/became_premium/ui/views/became_premium_view.dart';
import 'package:mustachehub/src/collection/ui/views/collection.dart';
import 'package:mustachehub/src/create/data/repositories/impl_package_form_repository.dart';
import 'package:mustachehub/src/create/interactor/adapters/token_identifier_flatmap_adapter.dart';
import 'package:mustachehub/src/create/interactor/adapters/token_identifier_text_display_adapter.dart';
import 'package:mustachehub/src/create/interactor/cubit/content_string_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/create_tab_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/fields_text_size_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/package_form_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/sugestion_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/variables_cubit.dart';
import 'package:mustachehub/src/create/interactor/repositories/i_package_form_repository.dart';
import 'package:mustachehub/src/create/ui/views/create_template_view.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/initial_binding_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/modules_navigation_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/navigation_possibilities_cubit.dart';
import 'package:mustachehub/src/dashboard/ui/pages/dashboard_main.dart';
import 'package:mustachehub/src/dashboard/ui/widgets/dashboard_drawer.dart';
import 'package:mustachehub/src/generate/data/repositories/impl_package_repository.dart';
import 'package:mustachehub/src/generate/interactor/adapters/dto_adapter.dart';
import 'package:mustachehub/src/generate/interactor/cubits/content_cubit.dart';
import 'package:mustachehub/src/generate/interactor/cubits/current_package_cubit.dart';
import 'package:mustachehub/src/generate/interactor/cubits/form_stats_cubit.dart';
import 'package:mustachehub/src/generate/interactor/cubits/payload_cubit.dart';
import 'package:mustachehub/src/generate/interactor/cubits/template_window_cubit.dart';
import 'package:mustachehub/src/generate/interactor/repositories/i_package_repository.dart';
import 'package:mustachehub/src/generate/ui/views/generate_main_view.dart';
import 'package:mustachehub/src/settings/interactor/cubit/theme_cubit.dart';
import 'package:mustachehub/src/settings/ui/config_main.dart';
import 'package:mustachehub/src/user/data/repositories/user_model_repository_impl.dart';
import 'package:mustachehub/src/user/data/repositories/user_stats_repository_impl.dart';
import 'package:mustachehub/src/user/interactor/cubits/user_cubit.dart';
import 'package:mustachehub/src/user/interactor/cubits/user_stats_cubit.dart';
import 'package:mustachehub/src/user/interactor/repositories/i_user_model_repository.dart';
import 'package:mustachehub/src/user/interactor/repositories/i_user_stats_repository.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i
      ..addSingleton<NavigationPossibilitiesCubit>(
          NavigationPossibilitiesCubit.new)
      ..addSingleton<ModulesNavigationCubit>(ModulesNavigationCubit.new)
      ..addSingleton<InitialBindingCubit>(InitialBindingCubit.new)
      ..addSingleton<IUserStatsRepository>(UserStatsRepositoryImpl.new)
      ..addSingleton<IUserModelRepository>(UserModelRepositoryImpl.new)
      ..addSingleton<UserStatsCubit>(UserStatsCubit.new)
      ..addSingleton<MyNavigator>(MyNavigator.new)
      ..addSingleton<ThemeCubit>(ThemeCubit.new)
      ..addSingleton<UserCubit>(UserCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.add(ChildRoute(
      '/',
      child: (context) => const DashboardMain(),
      children: [
        ChildRoute(
          '/find',
          child: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Hub'),
            ),
            drawer: context.whenSizeOrNull(
              compactSize: const DashboardDrawer(),
            ),
            backgroundColor: Colors.red[200],
          ),
        ),
        ChildRoute(
          '/collection',
          child: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Collection'),
            ),
            drawer: context.whenSizeOrNull(
              compactSize: const DashboardDrawer(),
            ),
            body: const MyHomePage(),
          ),
        ),
        ModuleRoute('/generate', module: GenerateModule()),
        ModuleRoute('/create', module: CreateModule()),
        ModuleRoute('/account', module: AccountModule()),
        ModuleRoute('/auth', module: AuthModule()),
        ChildRoute(
          '/becamepremium',
          child: (context) => const BecamePremiumView(),
        ),
        ChildRoute(
          '/config',
          child: (context) => const ConfigurationPage(),
        ),
      ],
    ));
  }
}

class GenerateModule extends Module {
  @override
  void binds(Injector i) {
    i
      ..addSingleton<ILocalSource>(ImplLocalSource.new)
      ..addSingleton<IPackageRepository>(ImplPackageRepository.new)
      ..addSingleton<DtoAdapter>(DtoAdapter.new)

      // Blocs
      ..addSingleton<FormStatsCubit>(FormStatsCubit.new)
      ..addSingleton<PayloadCubit>(PayloadCubit.new)
      ..addSingleton<ContentCubit>(ContentCubit.new)
      ..addSingleton<CurrentPackageCubit>(CurrentPackageCubit.new)
      ..addSingleton<TemplateWindowCubit>(TemplateWindowCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.add(ChildRoute(
      '/template',
      child: (context) => const GenerateMain(),
    ));

    r.add(ChildRoute(
      '/confirm-form',
      child: (context) => const Scaffold(),
    ));
  }
}

class CreateModule extends Module {
  @override
  void binds(Injector i) {
    i
      ..addSingleton<DtoAdapter>(DtoAdapter.new)
      ..addSingleton<TokenIdentifierFlatMapAdapter>(
          TokenIdentifierFlatMapAdapter.new)
      ..addSingleton<TokenIdentifierTextDisplayAdapter>(
          TokenIdentifierTextDisplayAdapter.new)
      ..addSingleton<ILocalSource>(ImplLocalSource.new)
      ..addSingleton<IPackageFormRepository>(ImplPackageFormRepository.new)

      // Blocs
      ..addSingleton<CreateTabCubit>(CreateTabCubit.new)
      ..addSingleton<ContentStringCubit>(ContentStringCubit.new)
      ..addSingleton<PackageFormCubit>(PackageFormCubit.new)
      ..addSingleton<FieldsTextSizeCubit>(FieldsTextSizeCubit.new)
      ..addSingleton<VariablesCubit>(VariablesCubit.new)
      ..addSingleton<SugestionCubit>(SugestionCubit.new)

      // Generate blocs
      ..addSingleton<PayloadCubit>(PayloadCubit.new)
      ..addSingleton<ContentCubit>(ContentCubit.new)
      ..addSingleton<FormStatsCubit>(FormStatsCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.add(
      ChildRoute(
        '/template',
        child: (context) => const CreateTemplateView(),
      ),
    );
  }
}

class AccountModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<ImageSelectorCubit>(ImageSelectorCubit.new);
    i.addSingleton<IImageRepository>(ImageRepositoryImpl.new);
  }

  @override
  void routes(RouteManager r) {
    r.add(ChildRoute(
      '/info',
      child: (context) => const AccountMain(),
    ));
    r.add(ChildRoute(
      '/selectImage',
      child: (context) => const AccountImageSelectPage(),
    ));
  }
}

class AuthModule extends Module {
  @override
  void binds(Injector i) {
    i
      ..addSingleton<ILogInRepository>(LogInRepositoryImpl.new)
      ..addSingleton<ISignInRepository>(SignInRepositoryImpl.new)
      ..addSingleton<LoginFormCubit>(LoginFormCubit.new)
      ..addSingleton<SignUpFormCubit>(SignUpFormCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.add(
      ChildRoute(
        '/',
        child: (context) => const Scaffold(
          body: RouterOutlet(),
        ),
        children: [
          ChildRoute(
            '/signin',
            child: (context) => const SigninPage(),
          ),
          ChildRoute(
            '/login',
            child: (context) => const LoginPage(),
          ),
          ChildRoute(
            '/createSuccessScreen',
            child: (context) => const AccountCreatedPage(),
          ),
        ],
      ),
    );
  }
}
