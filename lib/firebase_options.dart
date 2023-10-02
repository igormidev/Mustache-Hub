// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB2bXhEmyvjF0aPH7hHghPWIXlekdprTHE',
    appId: '1:122554410729:web:91c3c3a271b9bb116eb278',
    messagingSenderId: '122554410729',
    projectId: 'mustache-hub',
    authDomain: 'mustache-hub.firebaseapp.com',
    storageBucket: 'mustache-hub.appspot.com',
    measurementId: 'G-KHFT65F2T4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHh0o69f8anhLyxkNJS0hxEIgDk6WIi7E',
    appId: '1:122554410729:android:fccd009232a73b006eb278',
    messagingSenderId: '122554410729',
    projectId: 'mustache-hub',
    storageBucket: 'mustache-hub.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqKuLJi5LxhsnzeCOyreOF2gZQ13t2j3c',
    appId: '1:122554410729:ios:90da4c8ded31a0606eb278',
    messagingSenderId: '122554410729',
    projectId: 'mustache-hub',
    storageBucket: 'mustache-hub.appspot.com',
    iosBundleId: 'io.mustachehub.mustachehub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDqKuLJi5LxhsnzeCOyreOF2gZQ13t2j3c',
    appId: '1:122554410729:ios:bf2f82e2160fe9de6eb278',
    messagingSenderId: '122554410729',
    projectId: 'mustache-hub',
    storageBucket: 'mustache-hub.appspot.com',
    iosBundleId: 'io.mustachehub.mustachehub.RunnerTests',
  );
}
