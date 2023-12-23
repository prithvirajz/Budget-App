import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

import 'responsive_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    setPathUrlStrategy();
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDlwbCoeK7-P3j6DX-WESwChTSQ2L5IGfo",
            authDomain: "budget-app2-387fa.firebaseapp.com",
            projectId: "budget-app2-387fa",
            storageBucket: "budget-app2-387fa.appspot.com",
            messagingSenderId: "281334593426",
            appId: "1:281334593426:web:4e804cabecb9c4ddc4734b",
            measurementId: "G-YM782VYML9"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Budget App",
      //  theme: ThemeData(useMaterial3: true),
      home: ResponsiveHandler(),
    );
  }
}
