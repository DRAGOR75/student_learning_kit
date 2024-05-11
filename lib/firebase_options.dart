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
    apiKey: 'AIzaSyCdUEkIvDUqWW3nQAWJb1pz_WYhzWFGZYU',
    appId: '1:635331874517:web:263de488c2d9759216dc5c',
    messagingSenderId: '635331874517',
    projectId: 'learning-619ab',
    authDomain: 'learning-619ab.firebaseapp.com',
    storageBucket: 'learning-619ab.appspot.com',
    measurementId: 'G-YZKG3BKQEP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBT7CmNTGsx-X-pOF9FF9tZr9A2buckb4c',
    appId: '1:635331874517:android:806d8e3b3175265416dc5c',
    messagingSenderId: '635331874517',
    projectId: 'learning-619ab',
    storageBucket: 'learning-619ab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBfScBK1_CjVPd9QAbR-NQn9zxuZF8QHqI',
    appId: '1:635331874517:ios:58d9d16de09205e716dc5c',
    messagingSenderId: '635331874517',
    projectId: 'learning-619ab',
    storageBucket: 'learning-619ab.appspot.com',
    iosBundleId: 'com.example.studentLearningKit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBfScBK1_CjVPd9QAbR-NQn9zxuZF8QHqI',
    appId: '1:635331874517:ios:cd6335878bee36af16dc5c',
    messagingSenderId: '635331874517',
    projectId: 'learning-619ab',
    storageBucket: 'learning-619ab.appspot.com',
    iosBundleId: 'com.example.studentLearningKit.RunnerTests',
  );
}