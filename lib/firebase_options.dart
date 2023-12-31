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
    apiKey: 'AIzaSyCGu15tL9j9voyuOMfUhjgakRiaQUy2RBA',
    appId: '1:1059041790295:web:239115e47f8630d41bd612',
    messagingSenderId: '1059041790295',
    projectId: 'schedular-demo-dd8b9',
    authDomain: 'schedular-demo-dd8b9.firebaseapp.com',
    storageBucket: 'schedular-demo-dd8b9.appspot.com',
    measurementId: 'G-1KPBYW5VBF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIUQxqK9ymlrKwi5c0r2c61soognKycZQ',
    appId: '1:1059041790295:android:7e5e6d26057766151bd612',
    messagingSenderId: '1059041790295',
    projectId: 'schedular-demo-dd8b9',
    storageBucket: 'schedular-demo-dd8b9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGH4TAoJLIASaoareT7DZUpBXbfRyPDgs',
    appId: '1:1059041790295:ios:cc020bdb0b886bfc1bd612',
    messagingSenderId: '1059041790295',
    projectId: 'schedular-demo-dd8b9',
    storageBucket: 'schedular-demo-dd8b9.appspot.com',
    iosBundleId: 'com.example.taskAssesment',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGH4TAoJLIASaoareT7DZUpBXbfRyPDgs',
    appId: '1:1059041790295:ios:f140075b17a2c0311bd612',
    messagingSenderId: '1059041790295',
    projectId: 'schedular-demo-dd8b9',
    storageBucket: 'schedular-demo-dd8b9.appspot.com',
    iosBundleId: 'com.example.taskAssesment.RunnerTests',
  );
}
