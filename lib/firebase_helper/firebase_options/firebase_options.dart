import 'dart:io';
import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions{
    if(Platform.isIOS){
      return const FirebaseOptions(
          apiKey: 'AIzaSyCxAd7vcIxnsNwsB2kqT7dQ4Pe_KRAZfm8',
          appId: '1:1027570588895:ios:53ac28315903b438d21d6a',
          messagingSenderId: '1027570588895',
          projectId: 'pc-shopping-7b306',
          iosBundleId: 'com.example.pcShoppingApplication',
      );
    }else {
      return const FirebaseOptions(
          apiKey: 'AIzaSyC98Ed9Jh9Y7SGzKkYbCzCaQVjXEcS6tNY',
          appId: '1:1027570588895:android:8479eec4ea6a96fdd21d6a',
          messagingSenderId: '1027570588895',
          projectId: 'pc-shopping-7b306',
      );
    }
  }
}