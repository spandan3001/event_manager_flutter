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
    apiKey: 'AIzaSyB9Irp7cxRCCAEMWosRJPz2vUTrbYZM0iA',
    appId: '1:78002558379:web:b93ebc60719b4a9a39aeee',
    messagingSenderId: '78002558379',
    projectId: 'event-manager-flutter',
    authDomain: 'event-manager-flutter.firebaseapp.com',
    storageBucket: 'event-manager-flutter.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAR3pSa11xsmRaY77d7IMA9Gm_KD8Dths8',
    appId: '1:78002558379:android:d8670a537695422239aeee',
    messagingSenderId: '78002558379',
    projectId: 'event-manager-flutter',
    storageBucket: 'event-manager-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUSHEsQP2iYa8o4T2ZII6exhfj9DYwVZ4',
    appId: '1:78002558379:ios:47c2b1b353c1b0c139aeee',
    messagingSenderId: '78002558379',
    projectId: 'event-manager-flutter',
    storageBucket: 'event-manager-flutter.appspot.com',
    iosClientId: '78002558379-1qiafa2785smqd45561i0lbu7tr1sns7.apps.googleusercontent.com',
    iosBundleId: 'com.example.eventManager',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCUSHEsQP2iYa8o4T2ZII6exhfj9DYwVZ4',
    appId: '1:78002558379:ios:47c2b1b353c1b0c139aeee',
    messagingSenderId: '78002558379',
    projectId: 'event-manager-flutter',
    storageBucket: 'event-manager-flutter.appspot.com',
    iosClientId: '78002558379-1qiafa2785smqd45561i0lbu7tr1sns7.apps.googleusercontent.com',
    iosBundleId: 'com.example.eventManager',
  );
}
