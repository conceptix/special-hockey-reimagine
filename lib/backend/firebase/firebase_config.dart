import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAJF5BvRnsWoqOsiJ4OIpn1ffjMpZkabu8",
            authDomain: "special-hockey-ki7k0m.firebaseapp.com",
            projectId: "special-hockey-ki7k0m",
            storageBucket: "special-hockey-ki7k0m.appspot.com",
            messagingSenderId: "1000995692349",
            appId: "1:1000995692349:web:60ba2c1f41f8f6043d6f54"));
  } else {
    await Firebase.initializeApp();
  }
}
