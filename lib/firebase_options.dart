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
    apiKey: 'AIzaSyDByAFoepAxOx4mQfJW-k3Rdc7WRX3JHYQ',
    appId: '1:577562685677:web:eeab7442beb2c8e0081ce4',
    messagingSenderId: '577562685677',
    projectId: 'occultsciencesapp',
    authDomain: 'occultsciencesapp.firebaseapp.com',
    storageBucket: 'occultsciencesapp.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDI7w6fTBbNiREbZ0JpC3qXjE_s7IJQDVU',
    appId: '1:577562685677:android:f610f78b89ed2e4e081ce4',
    messagingSenderId: '577562685677',
    projectId: 'occultsciencesapp',
    storageBucket: 'occultsciencesapp.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPPHQ1JLw_7fnH2wqlVwGvJn6eV0tBm74',
    appId: '1:577562685677:ios:cee38b80beecd59c081ce4',
    messagingSenderId: '577562685677',
    projectId: 'occultsciencesapp',
    storageBucket: 'occultsciencesapp.firebasestorage.app',
    iosBundleId: 'com.example.astroAppAssesment',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDPPHQ1JLw_7fnH2wqlVwGvJn6eV0tBm74',
    appId: '1:577562685677:ios:cee38b80beecd59c081ce4',
    messagingSenderId: '577562685677',
    projectId: 'occultsciencesapp',
    storageBucket: 'occultsciencesapp.firebasestorage.app',
    iosBundleId: 'com.example.astroAppAssesment',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDByAFoepAxOx4mQfJW-k3Rdc7WRX3JHYQ',
    appId: '1:577562685677:web:5e5f481aa2795705081ce4',
    messagingSenderId: '577562685677',
    projectId: 'occultsciencesapp',
    authDomain: 'occultsciencesapp.firebaseapp.com',
    storageBucket: 'occultsciencesapp.firebasestorage.app',
  );
}
