import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) return web;
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError('Firebase is not configured for this platform.');
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCYoTaVoMQppuxi6p6yQBzwiTQHRi5eJW8',
    appId: '1:186717648805:android:14a40c1aa6cda409b0da4c',
    messagingSenderId: '186717648805',
    projectId: 'memo-8d350',
    authDomain: '://firebaseapp.com',
    storageBucket: 'memo-8d350.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: String.fromEnvironment(
      'SHADOW_FIREBASE_ANDROID_API_KEY',
      defaultValue: 'AIzaSyCYoTaVoMQppuxi6p6yQBzwiTQHRi5eJW8',
    ),
    appId: String.fromEnvironment(
      'SHADOW_FIREBASE_ANDROID_APP_ID',
      defaultValue: '1:186717648805:android:14a40c1aa6cda409b0da4c',
    ),
    messagingSenderId: '186717648805',
    projectId: 'memo-8d350',
    storageBucket: 'memo-8d350.firebasestorage.app',
  );

  static bool get androidMessagingConfigured =>
      RegExp(r'^1:186717648805:android:[0-9a-fA-F]+$')
          .hasMatch(android.appId) &&
      android.apiKey.isNotEmpty;

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYoTaVoMQppuxi6p6yQBzwiTQHRi5eJW8',
    appId: '1:186717648805:android:14a40c1aa6cda409b0da4c',
    messagingSenderId: '186717648805',
    projectId: 'memo-8d350',
    storageBucket: 'memo-8d350.firebasestorage.app',
    iosBundleId: 'com.memo.voiceapp',
  );
}
