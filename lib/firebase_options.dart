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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBfRQoHNIknqFKw2jtple0_n84R3LNd2QY',
    appId: '1:785666358800:web:80a1b44ed403c97eb55495',
    messagingSenderId: '785666358800',
    projectId: 'luckychoosie',
    authDomain: 'luckychoosie.firebaseapp.com',
    storageBucket: 'luckychoosie.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-ReNjCqOEs-i7Et9rRKvstKHlvE4HCA4',
    appId: '1:785666358800:android:21d5ed865ec470f7b55495',
    messagingSenderId: '785666358800',
    projectId: 'luckychoosie',
    storageBucket: 'luckychoosie.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCo7OU07usROwOR_xYmduc9HguwqevIG_U',
    appId: '1:785666358800:ios:80476b8aeeae2ce7b55495',
    messagingSenderId: '785666358800',
    projectId: 'luckychoosie',
    storageBucket: 'luckychoosie.appspot.com',
    iosClientId: '785666358800-buuufmmb85t9df9l1fm516tbt15gqbuj.apps.googleusercontent.com',
    iosBundleId: 'com.example.luckychoosie',
  );
}
