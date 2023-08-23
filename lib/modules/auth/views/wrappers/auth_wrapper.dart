import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mustachehub/core/helpers/debouncer.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/blocs/user/user_bloc.dart';
import 'package:mustachehub/logic/entities/user.dart';

class AuthWrapper extends StatefulWidget {
  final Widget child;
  const AuthWrapper({super.key, required this.child});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  final Debouncer _debouncer = Debouncer();

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? fbUser) {
      _debouncer.resetDebounce(() {
        final userBloc = context.get<UserBloc>();
        userBloc.add(
          UserEvent.setUser(
            user: fbUser == null ? null : UserModel.fromFirebase(fbUser),
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
