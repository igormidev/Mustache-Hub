import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mustachehub/core/navigation/navigator.dart';
import 'package:mustachehub/logic/blocs/theme/theme_bloc.dart';
import 'package:mustachehub/logic/blocs/user/user_bloc.dart';
import 'package:mustachehub/logic/sources/user_source.dart';
import 'package:mustachehub/modules/auth/blocs/auth/auth_bloc.dart';
import 'package:mustachehub/modules/auth/blocs/dashboard_page/dashboard_page_bloc.dart';
import 'package:mustachehub/modules/auth/blocs/login/login_bloc.dart';
import 'package:mustachehub/modules/auth/views/dashboard/dashboard_main.dart';
import 'package:mustachehub/modules/auth/views/login_view/login_main.dart';
import 'package:mustachehub/modules/auth/views/sign_up_view/sign_up_main.dart';
import 'package:mustachehub/modules/auth/views/user_info_view/user_info_main.dart';
import 'package:mustachehub/modules/config/views/config_view/config_main.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/content_string/content_string_bloc.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/fields_text_size/fields_text_size_bloc.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/variables/variables_bloc.dart';
import 'package:mustachehub/modules/create_template/views/create_template/create_template_main.dart';
import 'package:mustachehub/modules/find/test_hydrated_bloc.dart';
import 'package:mustachehub/modules/generate_text/logic/blocs/generate_text/generate_text_bloc.dart';
import 'package:mustachehub/modules/generate_text/views/generate_text_dashboard_view/generate_text_dashboard_main.dart';
import 'package:mustachehub/modules/generate_text/views/generate_text_tab/generate_text_main.dart';
import 'package:mustachehub/modules/home/views/home/home_main.dart';

import '../../modules/became_premium/views/became_premium_main.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<IUserSource>(UserSourceImpl.new);
    i.addSingleton<ThemeBloc>(ThemeBloc.new);
    i.addSingleton<DashboardPageBloc>(DashboardPageBloc.new);
    i.addSingleton<MyNavigator>(MyNavigator.new);
    i.addSingleton<UserBloc>(UserBloc.new);

    // Edit screen
    i.addSingleton<FieldsTextSizeBloc>(FieldsTextSizeBloc.new);
    i.addSingleton<VariablesBloc>(VariablesBloc.new);
    i.addSingleton<ContentStringBloc>(ContentStringBloc.new);

    // Generate text blocs
    i.addSingleton<GenerateTextBloc>(GenerateTextBloc.new);
  }

  @override
  void routes(RouteManager r) {
    r.add(ChildRoute(
      '/',
      child: (context) => const DashboardMain(),
      children: [
        ChildRoute(
          '/home',
          child: (context) => const HomeMain(),
        ),
        ChildRoute(
          '/find',
          child: (context) => TestHydratedBloc(),
        ),
        ChildRoute(
          '/generate',
          child: (context) => const GenerateTextDashboardMain(),
        ),
        ChildRoute(
          '/create',
          child: (context) => const CreateTemplateMain(),
        ),
        ModuleRoute('/auth', module: AuthModule()),
        ChildRoute(
          '/becamepremium',
          child: (context) => const BecamePremiumMain(),
        ),
        ChildRoute(
          '/config',
          child: (context) => const ConfigMain(),
        ),
      ],
    ));
  }
}

class AuthModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<LoginBloc>(LoginBloc.new);
    i.addSingleton<AuthBloc>(AuthBloc.new);
    i.addSingleton<IUserSource>(UserSourceImpl.new);
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
            child: (context) => SignUpMain(),
          ),
          ChildRoute(
            '/userinfo',
            child: (context) => const UserInfoMain(),
          ),
          ChildRoute(
            '/login',
            child: (context) => LoginMain(),
          ),
        ],
      ),
    );
  }
}
