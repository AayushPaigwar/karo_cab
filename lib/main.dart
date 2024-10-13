import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:karocab/onboarding_screen.dart';

import 'home_screen.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Screen0(),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen(),
        '/loginScreen': (context) => const LoginScreen(),
        '/homeScreen': (context) => const HomeScreen(),
      },
    );
  }
}
