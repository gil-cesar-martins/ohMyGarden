import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDcfQdKXYkvgNvm52NxtUWAB224hSZjt80",
            authDomain: "ohmygarden-75903.firebaseapp.com",
            projectId: "ohmygarden-75903",
            storageBucket: "ohmygarden-75903.appspot.com",
            messagingSenderId: "216303967810",
            appId: "1:216303967810:web:35982f5402f0b3709117db",
            measurementId: "G-SSG34ZL7R5"));
  } else {
    await Firebase.initializeApp();
  }
}
