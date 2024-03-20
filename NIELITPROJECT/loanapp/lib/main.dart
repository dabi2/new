import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/loginscreens/signin_screen.dart';
import 'package:loanapp/pages/bottomnavigationbar.dart';
import 'package:loanapp/pages/profilepage.dart';
// import 'package:loanapp/pages/applyloann.dart';
// import 'pages/bottomnavigationbar.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyBu12lTRt8atU312lnuxNAK0UcA7udERtI",
  authDomain: "loanapplication-bbc95.firebaseapp.com",
  projectId: "loanapplication-bbc95",
  storageBucket: "loanapplication-bbc95.appspot.com",
  messagingSenderId: "496975866686",
  appId: "1:496975866686:web:4ca4fa07de0f2c2c449a6f",
  measurementId: "G-R8QRY2WJQ3"));
  }else {
   await Firebase.initializeApp();
  }
  
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
