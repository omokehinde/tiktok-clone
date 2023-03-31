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
    apiKey: 'AIzaSyCDV3BKjNbTn1pI3SpCqO9mUPuVcLVymTA',
    appId: '1:462036173090:web:8dd8d0b2c5fdc71826257b',
    messagingSenderId: '462036173090',
    projectId: 'tiktok-clone-de700',
    authDomain: 'tiktok-clone-de700.firebaseapp.com',
    storageBucket: 'tiktok-clone-de700.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBz8aYQv_vaZ0UpanR4yhNWckbSIQW8vQA',
    appId: '1:462036173090:android:66fedb19f37d9e0726257b',
    messagingSenderId: '462036173090',
    projectId: 'tiktok-clone-de700',
    storageBucket: 'tiktok-clone-de700.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDuALPXoDkKq25pfVo35Qtn_JpbV0H9_C0',
    appId: '1:462036173090:ios:43ee5419291ec65726257b',
    messagingSenderId: '462036173090',
    projectId: 'tiktok-clone-de700',
    storageBucket: 'tiktok-clone-de700.appspot.com',
    iosClientId: '462036173090-cdjh7a9njhi40ithk4535id455oas5bk.apps.googleusercontent.com',
    iosBundleId: 'com.example.tiktokClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDuALPXoDkKq25pfVo35Qtn_JpbV0H9_C0',
    appId: '1:462036173090:ios:43ee5419291ec65726257b',
    messagingSenderId: '462036173090',
    projectId: 'tiktok-clone-de700',
    storageBucket: 'tiktok-clone-de700.appspot.com',
    iosClientId: '462036173090-cdjh7a9njhi40ithk4535id455oas5bk.apps.googleusercontent.com',
    iosBundleId: 'com.example.tiktokClone',
  );
}