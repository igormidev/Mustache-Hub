import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mustachehub/core/exceptions/custom_exception.dart';
import 'package:mustachehub/core/exceptions/failures/auth_failure.dart';
import 'package:mustachehub/core/extensions/dartz_extension.dart';
import 'package:mustachehub/logic/entities/user.dart';

abstract class IUserSource {
  Future<Either<CustomException, UserModel>> createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
  });

  Future<Either<CustomException, UserModel>> signInUserWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<CustomException, UserModel>> signInWithGoogleUser();

  Future<Either<CustomException, UserModel>> updateUser({
    required UserModel user,
  });
}

class UserSourceImpl implements IUserSource {
  UserSourceImpl({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleAuth,
  })  : _fb = firebaseAuth ?? FirebaseAuth.instance,
        _google = googleAuth ?? GoogleSignIn();

  final FirebaseAuth _fb;
  final GoogleSignIn _google;

  @override
  Future<Either<CustomException, UserModel>> createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
  }) async {
    return _manegeDefaultErrorWrapper(() async {
      final credentials = await _fb.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Creating/Updating its name
      await credentials.user?.updateDisplayName(userName);

      final user = credentials.user!;
      return UserModel.fromFirebase(user)
          .copyWith(
            name: userName,
          )
          .toRight();
    });
  }

  @override
  Future<Either<CustomException, UserModel>> signInUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return _manegeDefaultErrorWrapper(() async {
      final credentials = await _fb.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = credentials.user!;
      return UserModel.fromFirebase(user).toRight();
    });
  }

  @override
  Future<Either<CustomException, UserModel>> signInWithGoogleUser() async {
    return _manegeDefaultErrorWrapper(() async {
      final response = await _google.signIn();
      if (response == null) {
        return const DidNotSelectAnAccount().toLeft();
      }

      final googleAuth = await response.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _fb.signInWithCredential(credential);

      return UserModel(
        email: response.email,
        name: response.displayName ?? '',
        urlDisplayImage: response.photoUrl ?? '',
      ).toRight();
    });
  }

  @override
  Future<Either<CustomException, UserModel>> updateUser({
    required UserModel user,
  }) {
    return _manegeDefaultErrorWrapper(() async {
      final fbUser = _fb.currentUser;
      if (fbUser == null) {
        return const AuthUserNotFound().toLeft();
      }
      await fbUser.updateDisplayName(user.name);
      await fbUser.updatePhotoURL(user.urlDisplayImage);
      if (user.email != null) await fbUser.updateEmail(user.email!);

      return UserModel.fromFirebase(fbUser)
          .copyWith(
            email: user.email,
            name: user.name,
            urlDisplayImage: user.urlDisplayImage,
          )
          .toRight();
    });
  }

  Future<Either<CustomException, T>> _manegeDefaultErrorWrapper<T>(
    Future<Either<CustomException, T>> Function() func,
  ) async {
    try {
      return await func();

      // If we have a firebase auth erro, lets cast it to owr custom error.
    } on FirebaseAuthException catch (error) {
      final credentialError = CredentialAuthException.fromFirebaseError(error);

      return left(credentialError);

      // Generic error...
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      return left(UnknownError(error: error, stackTrace: stackTrace));
    }
  }
}
