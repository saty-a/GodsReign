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
    apiKey: 'AIzaSyCEVFJ_suYfmz74V7ryXv02c3ijxT6i6NY',
    appId: '1:567422574806:web:81bf2ac99867a8d8482977',
    messagingSenderId: '567422574806',
    projectId: 'godreign-f3a00',
    authDomain: 'godreign-f3a00.firebaseapp.com',
    storageBucket: 'godreign-f3a00.appspot.com',
    measurementId: 'G-CVKP12578M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDrIAuXHhksQy8_w6RSkpvtv0n-h-JXvBU',
    appId: '1:567422574806:android:a727f37c0a567a1f482977',
    messagingSenderId: '567422574806',
    projectId: 'godreign-f3a00',
    storageBucket: 'godreign-f3a00.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBh-5_K7vcqP1curC21_wIARkeOCbEet8s',
    appId: '1:567422574806:ios:40876a2af7bae9be482977',
    messagingSenderId: '567422574806',
    projectId: 'godreign-f3a00',
    storageBucket: 'godreign-f3a00.appspot.com',
    iosClientId: '567422574806-5pbls0pt225m7qk0mlhh6qvbsdrqaasb.apps.googleusercontent.com',
    iosBundleId: 'com.example.godreign',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBh-5_K7vcqP1curC21_wIARkeOCbEet8s',
    appId: '1:567422574806:ios:40876a2af7bae9be482977',
    messagingSenderId: '567422574806',
    projectId: 'godreign-f3a00',
    storageBucket: 'godreign-f3a00.appspot.com',
    iosClientId: '567422574806-5pbls0pt225m7qk0mlhh6qvbsdrqaasb.apps.googleusercontent.com',
    iosBundleId: 'com.example.godreign',
  );
}