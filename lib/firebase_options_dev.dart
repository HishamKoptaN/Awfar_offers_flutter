// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
class FirebaseOptionsRelease {
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
        return windows;
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
    apiKey: 'AIzaSyA9JwYfw_cjdrZmFc1RlHgd0DITvHfYz0c',
    appId: '1:630596450299:web:72e89445f5d2cea43ffd5e',
    messagingSenderId: '630596450299',
    projectId: 'awfar-offers',
    authDomain: 'awfar-offers.firebaseapp.com',
    storageBucket: 'awfar-offers.firebasestorage.app',
    measurementId: 'G-KWMZ1WSD9B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDdz2VEKNdXNaxbWk5Fjfa4rjn-_S7gpe8',
    appId: '1:630596450299:android:01562116847122e13ffd5e',
    messagingSenderId: '630596450299',
    projectId: 'awfar-offers',
    storageBucket: 'awfar-offers.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCdRTOk5DrN2AsNiktHKY35s_V3lDp77RI',
    appId: '1:630596450299:ios:1b82e7f609e41b1e3ffd5e',
    messagingSenderId: '630596450299',
    projectId: 'awfar-offers',
    storageBucket: 'awfar-offers.firebasestorage.app',
    iosBundleId: 'com.imolds.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCdRTOk5DrN2AsNiktHKY35s_V3lDp77RI',
    appId: '1:630596450299:ios:a03ce17a9033cd533ffd5e',
    messagingSenderId: '630596450299',
    projectId: 'awfar-offers',
    storageBucket: 'awfar-offers.firebasestorage.app',
    iosBundleId: 'com.awfaroffers.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA9JwYfw_cjdrZmFc1RlHgd0DITvHfYz0c',
    appId: '1:630596450299:web:84b4b25773f9e83e3ffd5e',
    messagingSenderId: '630596450299',
    projectId: 'awfar-offers',
    authDomain: 'awfar-offers.firebaseapp.com',
    storageBucket: 'awfar-offers.firebasestorage.app',
    measurementId: 'G-Z3EXL0TKBN',
  );
}
