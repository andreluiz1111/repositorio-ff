import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBYod96w9Ri1RAU3UF8G94MCWvbTQiNpnY",
            authDomain: "agendamento-5af84.firebaseapp.com",
            projectId: "agendamento-5af84",
            storageBucket: "agendamento-5af84.appspot.com",
            messagingSenderId: "755096424043",
            appId: "1:755096424043:web:98f9d92199f656535bab2e",
            measurementId: "G-975LW15FDM"));
  } else {
    await Firebase.initializeApp();
  }
}
