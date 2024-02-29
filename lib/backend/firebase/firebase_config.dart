import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDwP6OH6QAR46b7HiLHFzsVgqepLcqfpTE",
            authDomain: "auai-nsvuz7.firebaseapp.com",
            projectId: "auai-nsvuz7",
            storageBucket: "auai-nsvuz7.appspot.com",
            messagingSenderId: "172064615144",
            appId: "1:172064615144:web:0da56ec843ab725af5b75d"));
  } else {
    await Firebase.initializeApp();
  }
}
