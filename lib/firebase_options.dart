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
    apiKey: 'AIzaSyBCtIWyQYfuObfSXKySsC9dDf0FnB-1iu8',
    appId: '1:930914314837:web:ba0d6977fadff40e5c42dc',
    messagingSenderId: '930914314837',
    projectId: 'flutter-565f6',
    authDomain: 'flutter-565f6.firebaseapp.com',
    storageBucket: 'flutter-565f6.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBA-tre4ATs0jb4UEmUAT7CE_aNaJIrUEo',
    appId: '1:930914314837:android:6871b2a4bd8257a35c42dc',
    messagingSenderId: '930914314837',
    projectId: 'flutter-565f6',
    storageBucket: 'flutter-565f6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmGrT8PUAAY_jH65VAsocUVE8FmN3WkO0',
    appId: '1:930914314837:ios:eb8e2c3d6ca925d35c42dc',
    messagingSenderId: '930914314837',
    projectId: 'flutter-565f6',
    storageBucket: 'flutter-565f6.appspot.com',
    iosBundleId: 'com.example.crudFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBmGrT8PUAAY_jH65VAsocUVE8FmN3WkO0',
    appId: '1:930914314837:ios:5918d2799e5d4a1f5c42dc',
    messagingSenderId: '930914314837',
    projectId: 'flutter-565f6',
    storageBucket: 'flutter-565f6.appspot.com',
    iosBundleId: 'com.example.crudFirebase.RunnerTests',
  );
}
