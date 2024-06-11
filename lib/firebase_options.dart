// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
///

/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
///
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
      // throw UnsupportedError(
      //   'DefaultFirebaseOptions have not been configured for web - '
      //   'you can reconfigure this by running the FlutterFire CLI again.',
      // );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: "AIzaSyBD6cy0pZJ8JF71R-R5KuRKgNuLyvNv0oU",
    appId: "1:857382046128:android:cdc49d5643f03133ab6e75",
    messagingSenderId: "857382046128",
    projectId: 'quiz-6f6fe',
    storageBucket: "quiz-6f6fe.appspot.com",
  );
  static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyB0dcUWi3DIfgYQP5pTlxT6Idc9O7SSq7g",
      authDomain: "quiz-6f6fe.firebaseapp.com",
      projectId: "quiz-6f6fe",
      storageBucket: "quiz-6f6fe.appspot.com",
      messagingSenderId: "857382046128",
      appId: "1:857382046128:web:0b5ab1c7000977dcab6e75");
}