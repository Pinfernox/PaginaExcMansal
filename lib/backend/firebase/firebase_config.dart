import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBquTIEpaIGsMY7hYWaR8JxQ14ZnIX_kTI",
            authDomain: "excavacionesmansal-a8ca0.firebaseapp.com",
            projectId: "excavacionesmansal-a8ca0",
            storageBucket: "excavacionesmansal-a8ca0.appspot.com",
            messagingSenderId: "484497174017",
            appId: "1:484497174017:web:415654180b3180f39eda00",
            measurementId: "G-ETP1P9VYM8"));
  } else {
    await Firebase.initializeApp();
  }
}
