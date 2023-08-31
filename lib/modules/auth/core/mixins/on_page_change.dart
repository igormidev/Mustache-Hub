import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/blocs/user/user_bloc.dart';
import 'package:mustachehub/modules/auth/core/enums/e_drawer_navigation_possibilities.dart';
import 'package:mustachehub/shared/dialogs_api/implementations/hide_dialog.dart';
import 'package:mustachehub/shared/dialogs_api/implementations/loading_dialog.dart';

mixin PageModuleNavigator {
  Future<void> navigateToDashboardPage(BuildContext context, int index) async {
    final selectedOption = EDrawerNavigationPossibilities.values[index];

    // const prefix = '';
    String? page;
    switch (selectedOption) {
      case EDrawerNavigationPossibilities.home:
        break;
      case EDrawerNavigationPossibilities.collection:
        break;

      case EDrawerNavigationPossibilities.find:
        return context.replaceAll('/find');

      case EDrawerNavigationPossibilities.generateText:
        break;

      case EDrawerNavigationPossibilities.createMustache:
        return context.replaceAll('/create');

      case EDrawerNavigationPossibilities.account:
        context.get<UserBloc>().state.mapOrNull(
          noneUser: (value) {
            context.replaceAll('/auth/login');
          },
          logedIn: (value) {
            return context.replaceAll('/auth/userinfo');
          },
        );
        break;

      case EDrawerNavigationPossibilities.becamePremium:
        break;

      case EDrawerNavigationPossibilities.settings:
        return context.replaceAll('/config');

      case EDrawerNavigationPossibilities.logOut:
        showLoadingDialog(context);
        await Future.delayed(const Duration(milliseconds: 500));
        await FirebaseAuth.instance.signOut();
        hideCurrentDialog();
        if (context.mounted) context.replaceAll('/config');
        return;
    }
    log(page.toString());
    return;

    // context.push(prefix + page);
    // Modular.to.navigate('${prefix}page');
  }
}
