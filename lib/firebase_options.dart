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
    apiKey: 'AIzaSyCcHaESXPcHhAJgzhBwEcyBXdAMgGxjIbg',
    appId: '1:98296944926:web:65ab0ebde990e134d3510f',
    messagingSenderId: '98296944926',
    projectId: 'login-form-24798',
    authDomain: 'login-form-24798.firebaseapp.com',
    storageBucket: 'login-form-24798.appspot.com',
    measurementId: 'G-3LT8K2LZDS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtw-FJG1AHcxBpHRRSihnl_kEo34bLKXY',
    appId: '1:98296944926:android:648225f16c500f89d3510f',
    messagingSenderId: '98296944926',
    projectId: 'login-form-24798',
    storageBucket: 'login-form-24798.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpc-FnXVi7BCdJWf3D0u3H-vrYbvWjzTo',
    appId: '1:98296944926:ios:738a65c5bd5f019ed3510f',
    messagingSenderId: '98296944926',
    projectId: 'login-form-24798',
    storageBucket: 'login-form-24798.appspot.com',
    iosClientId: '98296944926-jc07v2k72v7gvvcjskh0n19gjuk5hc9d.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginform',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCpc-FnXVi7BCdJWf3D0u3H-vrYbvWjzTo',
    appId: '1:98296944926:ios:738a65c5bd5f019ed3510f',
    messagingSenderId: '98296944926',
    projectId: 'login-form-24798',
    storageBucket: 'login-form-24798.appspot.com',
    iosClientId: '98296944926-jc07v2k72v7gvvcjskh0n19gjuk5hc9d.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginform',
  );
}
