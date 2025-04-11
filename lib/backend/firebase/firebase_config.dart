import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCsUnx-aA-KjWKFLKnWFXI7zH2Dfc6CfvU",
            authDomain: "prueba-gnlh9t.firebaseapp.com",
            projectId: "prueba-gnlh9t",
            storageBucket: "prueba-gnlh9t.firebasestorage.app",
            messagingSenderId: "125912560334",
            appId: "1:125912560334:web:da29592df9a905ff98169f"));
  } else {
    await Firebase.initializeApp();
  }
}
