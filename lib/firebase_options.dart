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
    apiKey: 'AIzaSyDwhPcIiZeOuIWLV_rRA79DMwvWPfr88MI',
    appId: '1:945899016034:web:7f9fc5e83d42e8f436663b',
    messagingSenderId: '945899016034',
    projectId: 'chat-app-a7c57',
    authDomain: 'chat-app-a7c57.firebaseapp.com',
    storageBucket: 'chat-app-a7c57.appspot.com',
    measurementId: 'G-6HZPY0KN3Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAWidC-zLSRbP6W947oFiMJPq0qLhnf5jU',
    appId: '1:945899016034:android:3a8ef3600e7c25fe36663b',
    messagingSenderId: '945899016034',
    projectId: 'chat-app-a7c57',
    storageBucket: 'chat-app-a7c57.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDzzJiYtI9iyEmfnlIJbQcih_ULweNuRfc',
    appId: '1:945899016034:ios:6516342954b4983036663b',
    messagingSenderId: '945899016034',
    projectId: 'chat-app-a7c57',
    storageBucket: 'chat-app-a7c57.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDzzJiYtI9iyEmfnlIJbQcih_ULweNuRfc',
    appId: '1:945899016034:ios:c01d155a646cdda436663b',
    messagingSenderId: '945899016034',
    projectId: 'chat-app-a7c57',
    storageBucket: 'chat-app-a7c57.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
