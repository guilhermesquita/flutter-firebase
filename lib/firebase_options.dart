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
    apiKey: 'AIzaSyCpcH0t9zDFxpQPar1BKKBOQQUDGVChIdk',
    appId: '1:1008540004655:web:8088a3160d958ed32b31da',
    messagingSenderId: '1008540004655',
    projectId: 'horas-v3-27321',
    authDomain: 'horas-v3-27321.firebaseapp.com',
    databaseURL: 'https://horas-v3-27321-default-rtdb.firebaseio.com',
    storageBucket: 'horas-v3-27321.appspot.com',
    measurementId: 'G-NGMDZ5V9RM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAlmqmAMwIcA1pxinmfaUc5U9uIWFESPeQ',
    appId: '1:1008540004655:android:8073a357bebe37462b31da',
    messagingSenderId: '1008540004655',
    projectId: 'horas-v3-27321',
    databaseURL: 'https://horas-v3-27321-default-rtdb.firebaseio.com',
    storageBucket: 'horas-v3-27321.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBH1P90h-ORg0MAtKGCBuP2Vvplaxc8mU0',
    appId: '1:1008540004655:ios:bae36763edbd63062b31da',
    messagingSenderId: '1008540004655',
    projectId: 'horas-v3-27321',
    databaseURL: 'https://horas-v3-27321-default-rtdb.firebaseio.com',
    storageBucket: 'horas-v3-27321.appspot.com',
    iosBundleId: 'com.example.project1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBH1P90h-ORg0MAtKGCBuP2Vvplaxc8mU0',
    appId: '1:1008540004655:ios:1c5e1e3418fad6422b31da',
    messagingSenderId: '1008540004655',
    projectId: 'horas-v3-27321',
    databaseURL: 'https://horas-v3-27321-default-rtdb.firebaseio.com',
    storageBucket: 'horas-v3-27321.appspot.com',
    iosBundleId: 'com.example.project1.RunnerTests',
  );
}
