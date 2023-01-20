import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDSgo6tweSy50c-XbBeVbjsT-Di8gDnPog",
            authDomain: "themepark-8a311.firebaseapp.com",
            projectId: "themepark-8a311",
            storageBucket: "themepark-8a311.appspot.com",
            messagingSenderId: "364508319976",
            appId: "1:364508319976:web:d5629efe75f495060af95d",
            measurementId: "G-3QK1NHHT8G"));
  } else {
    await Firebase.initializeApp();
  }
}
