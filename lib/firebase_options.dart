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
    apiKey: 'AIzaSyCGPwvHLM0ItAQ1a8NksvgozlV2NzOB9G4',
    appId: '1:643231543022:web:0e88b1efdb96e9f6e64dff',
    messagingSenderId: '643231543022',
    projectId: 'pagination-task',
    authDomain: 'pagination-task.firebaseapp.com',
    databaseURL: 'https://pagination-task-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pagination-task.firebasestorage.app',
    measurementId: 'G-9RRHDBMP2Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7nEvOP0ro_V4e6GHNaJSiELr0_UfTTcc',
    appId: '1:643231543022:android:a09cace1893e0f42e64dff',
    messagingSenderId: '643231543022',
    projectId: 'pagination-task',
    databaseURL: 'https://pagination-task-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pagination-task.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC7D99Q234b925PRw0oi_672dsNDiF5208',
    appId: '1:643231543022:ios:1d1a5a125fbb9d14e64dff',
    messagingSenderId: '643231543022',
    projectId: 'pagination-task',
    databaseURL: 'https://pagination-task-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pagination-task.firebasestorage.app',
    iosBundleId: 'com.example.paginationTask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC7D99Q234b925PRw0oi_672dsNDiF5208',
    appId: '1:643231543022:ios:1d1a5a125fbb9d14e64dff',
    messagingSenderId: '643231543022',
    projectId: 'pagination-task',
    databaseURL: 'https://pagination-task-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pagination-task.firebasestorage.app',
    iosBundleId: 'com.example.paginationTask',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCGPwvHLM0ItAQ1a8NksvgozlV2NzOB9G4',
    appId: '1:643231543022:web:dd69ecfc7541cff2e64dff',
    messagingSenderId: '643231543022',
    projectId: 'pagination-task',
    authDomain: 'pagination-task.firebaseapp.com',
    databaseURL: 'https://pagination-task-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pagination-task.firebasestorage.app',
    measurementId: 'G-RTESQ75XFC',
  );

}