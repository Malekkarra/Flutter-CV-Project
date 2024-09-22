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
    apiKey: 'AIzaSyDrCW4wmK1BT85Px8BzPY0SmoU4S6SYEvc',
    appId: '1:174765754881:web:0b2df320b688b2783e4e00',
    messagingSenderId: '174765754881',
    projectId: 'fluttercvproj',
    authDomain: 'fluttercvproj.firebaseapp.com',
    databaseURL: 'https://fluttercvproj-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fluttercvproj.appspot.com',
    measurementId: 'G-RKYC2YTL5H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBXZL4pbcTeVVqjsWt_WM2u6jw_AtnWScQ',
    appId: '1:174765754881:android:72610c6e426e984a3e4e00',
    messagingSenderId: '174765754881',
    projectId: 'fluttercvproj',
    databaseURL: 'https://fluttercvproj-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fluttercvproj.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBqv589nMRId3cjT0pMOEHm1qsKgk9VZPw',
    appId: '1:174765754881:ios:84331ec16f119b833e4e00',
    messagingSenderId: '174765754881',
    projectId: 'fluttercvproj',
    databaseURL: 'https://fluttercvproj-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fluttercvproj.appspot.com',
    iosClientId: '174765754881-j5eashc6prol5i1loe0885eu4qga9056.apps.googleusercontent.com',
    iosBundleId: 'com.example.fluttercvproj',
  );
}