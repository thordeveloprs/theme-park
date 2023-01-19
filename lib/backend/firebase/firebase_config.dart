import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB1r986UCO-c3lopcjohFiskPSAxiSf2hA",
            authDomain: "themepark-1759f.firebaseapp.com",
            projectId: "themepark-1759f",
            storageBucket: "themepark-1759f.appspot.com",
            messagingSenderId: "93828672695",
            appId: "1:93828672695:web:a08cb0045655155e30b132",
            measurementId: "G-1J6XF1R0JW"));
  } else {
    await Firebase.initializeApp();
  }
}
