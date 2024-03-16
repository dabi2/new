import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/loginscreens/signin_screen.dart';
import 'package:loanapp/pages/applyloann.dart';
import 'pages/bottomnavigationbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
