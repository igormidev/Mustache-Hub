import 'package:firebase_auth/firebase_auth.dart';
import 'package:mustachehub/src/auth/data/mixins/manege_firebase_auth_error_mixin.dart';
import 'package:mustachehub/src/auth/interactor/repositories/i_sign_in_repository.dart';
import 'package:mustachehub/src/auth/interactor/states/sign_up_form_state.dart';
import 'package:mustachehub/core/mocks/initial_pipe.dart';
import 'package:mustachehub/core/helpers/unique_id_generator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignInRepositoryImpl
    with ManegeFirebaseAuthErrorMixin
    implements ISignInRepository {
  final FirebaseAuth _fb;
  final FirebaseFirestore _firestore;

  SignInRepositoryImpl({
    FirebaseAuth? firebaseAuth,
    FirebaseFirestore? firestore,
  })  : _fb = firebaseAuth ?? FirebaseAuth.instance,
        _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<SignUpFormState> createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
  }) async {
    return manegeDefaultErrorWrapper(
      func: () async {
        const idGen = UniqueIdGenerator();
        final initialPackageId = idGen.getId();

        final userCredential = await _fb.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        await userCredential.user?.updateDisplayName(userName);

        final userId = userCredential.user!.uid;

        final collRef = _firestore.collection('collection').doc(userId);

        final userStatsRef = _firestore.collection('stats').doc(userId);

        final packageRef = _firestore.collection('packages').doc();
        final historyRef =
            _firestore.collection('packages/${packageRef.id}/history').doc();

        final createdAt = Timestamp.fromDate(DateTime.now());

        await _firestore.runTransaction((Transaction transaction) async {
          packageRef;
          transaction
              .set(packageRef, initialPipe(userId))
              .set(historyRef, getInitialTemplateMap(createdAt))
              .set(userStatsRef, getUserStats(createdAt))
              .set(
                collRef,
                initialCollection(
                  packageRef: packageRef,
                  initialCollectionId: initialPackageId,
                ),
              );
        });

        await _fb.signInWithEmailAndPassword(
          email: email,
          password: password,
        );

        return SignUpFormState.success();
      },
      toState: (error) {
        return SignUpFormState.withError(error: error);
      },
    );
  }
}
