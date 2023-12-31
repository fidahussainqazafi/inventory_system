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
    apiKey: 'AIzaSyAzIB4tHWqPeJyop4edOkAoeya_BnfEk4A',
    appId: '1:33808732540:web:8adb7e0336784ed89bd4f9',
    messagingSenderId: '33808732540',
    projectId: 'inventorysystem-29f42',
    authDomain: 'inventorysystem-29f42.firebaseapp.com',
    storageBucket: 'inventorysystem-29f42.appspot.com',
    measurementId: 'G-ZH1C5LEV1N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcqGmChcnG42IkLxyFjqM9yUQcEndAAOs',
    appId: '1:33808732540:android:df220305b9e6b30d9bd4f9',
    messagingSenderId: '33808732540',
    projectId: 'inventorysystem-29f42',
    storageBucket: 'inventorysystem-29f42.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAh0OKqZyYqapwAxn7yjs6JGf8CxPsTWck',
    appId: '1:33808732540:ios:1e178ed21d1e69f39bd4f9',
    messagingSenderId: '33808732540',
    projectId: 'inventorysystem-29f42',
    storageBucket: 'inventorysystem-29f42.appspot.com',
    iosBundleId: 'com.example.inventorySystem',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAh0OKqZyYqapwAxn7yjs6JGf8CxPsTWck',
    appId: '1:33808732540:ios:6e6957d9207455ac9bd4f9',
    messagingSenderId: '33808732540',
    projectId: 'inventorysystem-29f42',
    storageBucket: 'inventorysystem-29f42.appspot.com',
    iosBundleId: 'com.example.inventorySystem.RunnerTests',
  );
}
