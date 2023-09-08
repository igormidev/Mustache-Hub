import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/blocs/user/user_bloc.dart';
import 'package:mustachehub/shared/dialogs_api/implementations/hide_dialog.dart';
import 'package:mustachehub/shared/dialogs_api/implementations/loading_dialog.dart';

class UserInfoMain extends StatelessWidget {
  const UserInfoMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User info'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 16),
          if (context.get<UserBloc>().state.isLoggedIn == true)
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () async {
                  showLoadingDialog(context);
                  await Future.delayed(const Duration(milliseconds: 500));
                  await FirebaseAuth.instance.signOut();
                  hideCurrentDialog();
                  if (context.mounted) context.replaceAll('/config');
                },
                icon: const Icon(Icons.logout_outlined),
                label: const Text('Log out'),
              ),
            ),
        ],
      ),
    );
  }
}
