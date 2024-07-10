import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBoNWI8S_rFMnJnlUDYgh8oEnsV5LbfltU",
            authDomain: "hrchain.firebaseapp.com",
            projectId: "hrchain",
            storageBucket: "hrchain.appspot.com",
            messagingSenderId: "442717194452",
            appId: "1:442717194452:web:207b67ff9d8d4fda5d5341",
            measurementId: "G-8G2C6W42FL"));
  } else {
    await Firebase.initializeApp();
  }
}
